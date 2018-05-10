import './VideoTitleContainer.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import axios from 'axios';
import { handleSubscription } from './../../../ducks/reducer';
import { Link } from 'react-router-dom';


class VideoTitleContainer extends Component {
    constructor(props){
        super(props);

        this.state={
            subscribersCount: 0
            , canSubscribe: true
        }

    }

    componentWillReceiveProps(newProps){
        if (newProps != this.props){
            this.props = newProps;
        }
    }

    componentDidMount() {
        axios.get(`/api/checkForSubscriptions/${this.props.snippet.channelTitle}`).then((res) => {
            let { result } = res.data;
            if (!result) {
                this.setState({
                    canSubscribe: true
                })
            } else {
                this.setState({
                    canSubscribe: false
                })
            }
        })

        this.fetchSubscribersCount();

        if (!this.state.canSubscribe) {
            let subscribed = document.getElementById('unsubscribe_bttn')
            let unsubscribe = document.getElementById('unsubscribe_bttn_hover')
            document.getElementById('unsubscribe_bttn').addEventListener("mouseenter", function () {
                subscribed.style.display = 'none';
                unsubscribe.style.display = 'block';
            });
            unsubscribe.addEventListener("mouseleave", function () {
                subscribed.style.display = 'block';
                unsubscribe.style.display = 'none';
            });
        }
    }

    fetchSubscribersCount() {
        axios.get('/api/subscribersCount/' + this.props.snippet.channelTitle).then((res) => {
            this.setState({
                subscribersCount: res.data.result
            })
        })
    }

    componentDidUpdate(prevProps, prevState){
        if(this.props != prevProps || this.state != prevState){
            if(!this.state.canSubscribe){
                // let subscribed = document.getElementById('unsubscribe_bttn')
                let unsubscribe = document.getElementById('unsubscribe_bttn_hover')
                document.getElementById('unsubscribe_bttn').addEventListener("mouseenter", function(){
                    document.getElementById('unsubscribe_bttn').style.display = 'none';
                    unsubscribe.style.display = 'block';
                })
                unsubscribe.addEventListener("mouseleave", function(){
                    document.getElementById('unsubscribe_bttn').style.display = 'block';
                    unsubscribe.style.display = 'none';
                })
            } 
        }
    }
    subscribeTo(str) {
        axios.post(`/api/subscribe/${ str }`).then(()=>{
            this.props.notify();
            this.setState((prev) => ({
                canSubscribe: false,
                subscribersCount: prev.subscribersCount + 1
            }));
            this.props.handleSubscription();
        });
    }

    unsubscribeTo(str) {
        axios.delete(`/api/unsubscribe/${ str }`).then(()=>{
            this.setState((prev) => ({
                canSubscribe: true,
                subscribersCount: prev.subscribersCount - 1
            }));
            this.props.unsubNotify();
        })
    }

    renderLike() {
        let { statistics } = this.props;
        switch (this.props.likeStatus) {
            case 1:
                return (
                    <ul className='like_dislike_list'>
                    <li>
                        <div className='video_title_like_thumb_active'
                            onClick={this.props.handleLike} ></div>
                        <p>{Number(statistics.likeCount).toLocaleString()}</p>
                    </li>
                    <li>
                        <div className='video_title_dislike_thumb'
                            onClick={this.props.handleDislike} ></div>
                        <p>{Number(statistics.dislikeCount).toLocaleString()}</p>
                    </li>
                    </ul>
                );
        
            case -1:
                return (
                    <ul className='like_dislike_list'>
                        <li>
                            <div className='video_title_like_thumb'
                                onClick={this.props.handleLike} ></div>
                            <p>{Number(statistics.likeCount).toLocaleString()}</p>
                        </li>
                        <li>
                            <div className='video_title_dislike_thumb_active'
                                onClick={this.props.handleDislike} ></div>
                            <p>{Number(statistics.dislikeCount).toLocaleString()}</p>
                        </li>
                    </ul>
                );
            
            default:
                return (
                    <ul className='like_dislike_list'>
                        <li>
                            <div className='video_title_like_thumb'
                                onClick={this.props.handleLike} ></div>
                            <p>{Number(statistics.likeCount).toLocaleString()}</p>
                        </li>
                        <li>
                            <div className='video_title_dislike_thumb'
                                onClick={this.props.handleDislike} ></div>
                            <p>{Number(statistics.dislikeCount).toLocaleString()}</p>
                        </li>
                    </ul>
                );
        }
    }

    render() {
        console.log('video-title rerender');
        let subbtn;
        let subbtnTwo;
        let editBtn;
        if (this.props.snippet.channelTitle === this.props.auth.username) {
            editBtn = <button type="button" className="edit-btn">Edit</button>
        } else if(this.state.canSubscribe){
            subbtn = <section>
                    <div id="subscribe_bttn_test" className='subscribe_button' onClick= { ()=> this.subscribeTo(snippet.channelTitle) }>
                        <div className='subscribe_play_button'></div>
                        <p>Subscribe</p>
                        <div className='num_subscribers_box'>
                            <p className='num_subscribers'>{ this.state.subscribersCount } </p>
                        </div>
                    </div>
                </section>
        } else{
            subbtnTwo = <section> 
                        <div id="unsubscribe_bttn" className='unsubscribe_button'>
                                <div className='unsubscribe_play_button'></div>
                                <p id="subscribe_words">Subscribed</p>
                                <div className='num_subscribers_box_unsub'>
                                    <p className='num_subscribers'>{ this.state.subscribersCount } </p>
                                </div>
                        </div>
                        <div id="unsubscribe_bttn_hover" className='unsubscribe_button_hover' onClick= { ()=> this.unsubscribeTo(snippet.channelTitle) }>
                            <div className='unsubscribe_play_button_hover'></div>
                            <p id="unsubscribe_words">Unsubscribe</p>
                            <div className='num_subscribers_box_unsub'>
                                <p className='num_subscribers'>{ this.state.subscribers } </p>
                            </div>
                        </div>
                    </section>
        }
        let {
            snippet,
            statistics,
            id
        }=this.props;
        return (
            <div className='video_title_wrapper'>
                <div className='video_title_container'>
                    <h3 className='video_title'>{ snippet.title }</h3>
                    <div className='channel_thumbnail' 
                    onClick={ ()=> {console.log(this.state.canSubscribe)} } >
                    </div>
                    <div className='channel_container'>
                        <Link to={'/channel/' + snippet.channelTitle + '/home'}><p key={1} className='channel_title'> {snippet.channelTitle}</p> </Link>
                        { editBtn }
                        { subbtn }
                        { subbtnTwo }
                    </div>
                    <h2 className='video_view_count'> { Number(statistics.viewCount).toLocaleString() } views</h2>
                    <div className='video_title_line'></div>
                    <div className='video_title_bottom'>
                        <ul className='add_share_list'>
                            <li className='video_title_add_box'>
                                <div className='video_title_plus_button'></div>
                                <p>Add to</p>
                            </li>
                            <li onClick={ this.props.showShareBox } >
                                <div className='video_title_share_arrow'></div>
                                <p>Share</p>
                            </li>
                            <li>
                                <div className='video_title_more_dots'></div>
                                <p>More</p>
                            </li>
                        </ul>
                        {this.renderLike()}
                    </div>
                </div>
            </div>
        );
    }
}

const mapStateToProps = (state) => {
    return {
        subscription: state.subscriptions,
        auth: state.auth
    }
}

export default connect(mapStateToProps, { handleSubscription } )(VideoTitleContainer);
