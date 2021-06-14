/* eslint-disable prefer-const */
/* eslint-disable @typescript-eslint/quotes */
/* eslint-disable @typescript-eslint/naming-convention */
/* eslint-disable @typescript-eslint/dot-notation */
import { Component, OnInit, ViewChild } from '@angular/core';
import { IonContent } from '@ionic/angular';
import { ChatserviceService } from './../chatservice.service';
import { Router } from '@angular/router';
import { Observable } from 'Rxjs';
import { ChatPage } from './../chat/chat.page';
import { SigninPage } from './../signin/signin.page';
import { InterestedprofilePage } from './../interestedprofile/interestedprofile.page';
import { MatchesPage } from './../matches/matches.page';

@Component({
  selector: 'app-chatwindow',
  templateUrl: './chatwindow.page.html',
  styleUrls: ['./chatwindow.page.scss'],
})
export class ChatwindowPage implements OnInit {
  @ViewChild(IonContent) content: IonContent;

  messages: Observable<any[]>;
  newMsg = '';
  name1;
  img;
  email;
  messageDateString = '';

  constructor(private chatService: ChatserviceService, private router: Router) {

  }



  ngOnInit() {
    if(InterestedprofilePage.obj['name'] !== undefined){
       this.name1 = InterestedprofilePage.obj['name'];
    }
    else if(ChatPage.obj['name'] !== undefined){
       this.name1 = ChatPage.obj['name'];
    }
    else{
      this.name1 = MatchesPage.obj['name'];
    }

    if(InterestedprofilePage.obj['img'] !== undefined){
      this.img = InterestedprofilePage.obj['img'];
    }
    else if(ChatPage.obj['img'] !== undefined){
      this.img = ChatPage.obj['img'];
    }
    else{
      this.img = MatchesPage.obj['img'];
    }

    if(InterestedprofilePage.obj['email'] !== undefined){
      this.email = InterestedprofilePage.obj['email'];
    }
    else if(ChatPage.obj['email'] !== undefined){
      this.email = ChatPage.obj['email'];
    }
    else{
      this.email = MatchesPage.obj['email'];
    }

    this.messages = this.chatService.getChatMessages(this.email,SigninPage.email);

  }

  sendMessage() {
    if(this.newMsg !== ''){
      this.chatService.addChatMessage(this.newMsg,this.email).then((msg) => {
        this.newMsg = '';
        setTimeout(() => {
          this.content.scrollToBottom();
        });

      });
    }
  }

//    isDifferentDay(messageIndex: number): boolean {

//     if (messageIndex === 0) {return true;}

//     const d1 = new Date(this.messages[messageIndex - 1].createdAt);
//     const d2 = new Date(this.messages[messageIndex].createdAt);

//     console.log('date',d1,d2);

//     return d1.getFullYear() !== d2.getFullYear()
//       || d1.getMonth() !== d2.getMonth()
//       || d1.getDate() !== d2.getDate();
// }

//   getMessageDate(messageIndex: number): string {

//     let dateToday = new Date().toDateString();
//     let longDateYesterday = new Date();
//     longDateYesterday.setDate(new Date().getDate() - 1);
//     let dateYesterday = longDateYesterday.toDateString();
//     let today = dateToday.slice(0, dateToday.length - 5);
//     let yesterday = dateYesterday.slice(0, dateToday.length - 5);

//     const wholeDate = new Date(
//       this.messages[messageIndex].createdAt
//     ).toDateString();

//     this.messageDateString = wholeDate.slice(0, wholeDate.length - 5);

//     if (
//       new Date(this.messages[messageIndex].createdAt).getFullYear() ===
//       new Date().getFullYear()
//     ) {
//       if (this.messageDateString === today) {
//         return "Today";
//       } else if (this.messageDateString === yesterday) {
//         return "Yesterday";
//       } else {
//         return this.messageDateString;
//       }
//     } else {
//       return wholeDate;
//     }

//  }

}
