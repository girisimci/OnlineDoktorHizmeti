const socket = io('https://teletip-streeam.herokuapp.com/');






$('#div-chat').hide();
socket.on('cevrimici_liste', arrUserInfo => {

    $('#div-chat').show();
    $('#div-btn').hide();

    arrUserInfo.forEach(kullanici => {
        const { ten, peerId } = kullanici;
        $('#ulUser').append(`<li id="${peerId}">${ten}</li>`);
    });

    socket.on('yeni_cevrimici_liste', kullanici => {
        const { ten, peerId } = kullanici;
        $('#ulUser').append(`<li id="${peerId}">${ten}</li>`);
    });

    socket.on('kesilen_baglanti', peerId => {

        $(`#${peerId}`).remove();

    });


});

socket.on('gercek_kullanici' , () => alert('Başka bir hesapla deneyin!'));



function openStream () {
    var config = { audio: false , video: true };
    return navigator.mediaDevices.getUserMedia(config) || navigator.webkitGetUserMedia(config) ||
        navigator.mozGetUserMedia(config) ;
};

function playStream(idVideoTag , stream){
var video=document.getElementById(idVideoTag);
video.srcObject = stream;
video.play();

};

//openStream()
//.then(stream => playStream('localStream', stream));

//var peer = new Peer({key: 'lwjd5qra8257b9'});


var peer = new Peer({
    config: {'iceServers': [
        {url:'stun:stun.l.google.com:19302'},
        
        {
            url: 'turn:numb.viagenie.ca',
            credential: 'muazkh',
            username: 'webrtc@live.com'
        },
        {
            url: 'turn:192.158.29.39:3478?transport=udp',
            credential: 'JZEOEt2V3Qb0y27GRntt2u2PAYA=',
            username: '28224511:1379330808'
        },
        {
            url: 'turn:192.158.29.39:3478?transport=tcp',
            credential: 'JZEOEt2V3Qb0y27GRntt2u2PAYA=',
            username: '28224511:1379330808'
        }
    ]} 
  });

//peer = new Peer({ key: 'lwjd5qra8257b9', debug: 3, config: ice.iceServers});
peer.on('open' , id => {
    $('#myPeer').append(id);
    $('#btnSingUp').click(() =>{

        const kullaniciAdi = $('#txtUsername').val();
        socket.emit('kullanici_ky' , { ten: kullaniciAdi, peerId: id});
        
    
    });

});


//arayan

$('#btnCall').click(()=>{
const id = $('#remoteId').val();
openStream()
.then(stream => {
playStream('localStream' , stream);
const call = peer.call(id , stream);
call.on('stream' , remoteStream => playStream('remoteStream', remoteStream));
});
});

//aranan

peer.on('call' , call =>{
openStream()
.then(stream => {
//Cevap Buton
    
    call.answer(stream);
    playStream('localStream' , stream);
    call.on('stream' , remoteStream => playStream('remoteStream' , remoteStream));
    
    

    
})
});

//kullanıcı adı

$('#ulUser').on('click' , 'li' , function(){

     const id = $(this).attr('id');
     openStream()
.then(stream => {
playStream('localStream' , stream);
const call = peer.call(id , stream);
call.on('stream' , remoteStream => playStream('remoteStream', remoteStream));
callSound.paused();
});

});

//close



 $('btnClose').click(() =>{
peer.on('close', function() { 


    console.log('on close');

 });
 });




