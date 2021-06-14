/* eslint-disable @typescript-eslint/dot-notation */
/* eslint-disable @typescript-eslint/member-ordering */
/* eslint-disable @typescript-eslint/prefer-for-of */
import { Component, OnInit } from '@angular/core';
import { MatchesPage } from './../matches/matches.page';
import { Router } from '@angular/router';
import { AuthService } from './../services/auth.service';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.page.html',
  styleUrls: ['./chat.page.scss'],
})
export class ChatPage implements OnInit {
  chatList = [];
  static obj = {};
  displayImage: any;

  constructor(private authService: AuthService,private router: Router) { }
//chatreq,mail,name,uid
  ngOnInit() {
    for(let i=0;i<MatchesPage.allMatch.length;i++){
       if(MatchesPage.allMatch[i].chatreq === 2){
        this.authService.getSetProfileId(MatchesPage.allMatch[i].uid).subscribe((msg2)=>{
          // console.log('uid',MatchesPage.allMatch[i].uid);
          //console.log('chat',msg2);
           if(msg2['id'] !== null){
             this.authService.getProfilePhoto(MatchesPage.allMatch[i].uid,msg2['id']).subscribe((msg1)=>{
                this.displayImage = 'data:image/jpeg;base64,' + msg1.body['message'];
                this.chatList.push({email:MatchesPage.allMatch[i].mail,name:MatchesPage.allMatch[i].name,img:this.displayImage});
             });
           }
           else {
               this.displayImage = './../../assets/icon/profile.png';
               this.chatList.push({email:MatchesPage.allMatch[i].mail,name:MatchesPage.allMatch[i].name,img:this.displayImage});
           }

         });
         //this.chatList.push({email:MatchesPage.allMatch[i].mail,name:MatchesPage.allMatch[i].name,img:this.displayImage});
         console.log(this.chatList);
       }
    }
  }

  chats(mail,name1,img1){
    ChatPage.obj = {
      email: mail,
      name: name1,
      img: img1
    };
    this.router.navigate(['/chatwindow']);
  }

}
