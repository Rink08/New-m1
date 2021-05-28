/* eslint-disable @typescript-eslint/quotes */
/* eslint-disable quote-props */
/* eslint-disable no-underscore-dangle */
/* eslint-disable @typescript-eslint/member-ordering */
/* eslint-disable max-len */
import { Injectable } from '@angular/core';
import { User } from './../models/User';
import {Router} from '@angular/router';
import { ErrorHandlerService } from './error-handler.service';

import {HttpClient,HttpHeaders} from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import {first,catchError,tap} from 'rxjs/operators';
import { FileUploadOptions, FileTransferObject } from '@ionic-native/file-transfer';

export interface ApiImage {
  _id: string;
  name: string;
  createdAt: Date;
  url: string;
}

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  isUserLoggedIn$=new BehaviorSubject<boolean>(false);
  userId: Pick<User,'uid'>;
  isauthLogger=true;

  private url='http://localhost:5000/auth/signup';
  private url1='http://localhost:5000/auth/login';
  apiURL='http://localhost:5000/auth/';

// eslint-disable-next-line @typescript-eslint/member-ordering
httpOptions: {headers: HttpHeaders}={
  // eslint-disable-next-line @typescript-eslint/naming-convention
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

// eslint-disable-next-line @typescript-eslint/member-ordering
httpOptionsFile: {headers: HttpHeaders}={
  // eslint-disable-next-line @typescript-eslint/naming-convention
  headers: new HttpHeaders({'Accept':'application/json', 'enctype': 'multipart/form-data' })
};

  constructor(private http: HttpClient,private errorHandlerService: ErrorHandlerService,private router: Router) { }

  signup(user): Observable<User>{
    console.log('auth');
    return this.http.post<User>(this.url,user,this.httpOptions).pipe(
      first(),
      catchError(this.errorHandlerService.handleError<User>('signup'))

    );
  }

  login(mail: Pick<User,'mail'>,
  password: Pick<User,'password'>
  ): Observable<{
    token: string;
    userId: Pick<User,'uid'>;
  }>{
    return this.http
    .post(this.url1,{ mail , password },this.httpOptions)
    .pipe(
      first(),
      tap((tokenObject: {token: string;userId: Pick<User,'uid'>})=>{
        this.userId=tokenObject.userId;
        localStorage.setItem('token',tokenObject.token);
        this.isUserLoggedIn$.next(true);
        this.router.navigate(['main']);


      }),
      catchError(this.errorHandlerService.handleError<{
        token: string;userId: Pick<User,'uid'>;
      }>('login'))
    );
  }

  getMotherTongue()
  {
    return this.http.get(`http://localhost:5000/auth/getMotherTongue`,this.httpOptions);
  }

  getCaste()
  {
    return this.http.get(`http://localhost:5000/auth/getCaste`,this.httpOptions);
  }

  getSubCaste(name)
  {
    return this.http.get(`http://localhost:5000/auth/getSubCaste/${name}`,this.httpOptions);
  }


  geteducation()
  {
    return this.http.get(`http://localhost:5000/auth/geteducation`,this.httpOptions);
  }

  getoccupation()
  {
    return this.http.get(`http://localhost:5000/auth/getoccupation`,this.httpOptions);
  }

  getsalaryscale()
  {
    return this.http.get(`http://localhost:5000/auth/getsalaryscale`,this.httpOptions);
  }

  getheightrange()
  {
    return this.http.get(`http://localhost:5000/auth/getheightrange`,this.httpOptions);
  }

  getBasicDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getBasicDetails/${uid}`,this.httpOptions);
  }

  putBasicDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putBasicDetails`,user,this.httpOptions);
  }

  getPersonalDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getPersonalDetails/${uid}`,this.httpOptions);
  }

  putPersonalDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putPersonalDetails`,user,this.httpOptions);
  }

  getEduDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getEduDetails/${uid}`,this.httpOptions);
  }

  putEduDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putEduDetails`,user,this.httpOptions);
  }

  getPartnerDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getPartnerDetails/${uid}`,this.httpOptions);
  }

  putPartnerDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putPartnerDetails`,user,this.httpOptions);
  }

  getFamilyDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getFamilyDetails/${uid}`,this.httpOptions);
  }

  putFamilyDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putFamilyDetails`,user,this.httpOptions);
  }

  getContactDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getContactDetails/${uid}`,this.httpOptions);
  }

  putContactDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putContactDetails`,user,this.httpOptions);
  }

  getOtherDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getOtherDetails/${uid}`,this.httpOptions);
  }

  putOtherDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putOtherDetails`,user,this.httpOptions);
  }

  getSearchDetails(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getSearchDetails/${uid}`,this.httpOptions);
  }

  putSearchDetails(user)
  {
    return this.http.put(`http://localhost:5000/auth/putSearchDetails`,user,this.httpOptions);
  }

  getSearch(user)
  {
    return this.http.put(`http://localhost:5000/auth/getSearch`,user,this.httpOptions);
  }

  getGender(uid)
  {
    return this.http.get(`http://localhost:5000/auth/getGender/${uid}`,this.httpOptions);
  }

  fetchSearchResult(uid)
  {
    console.log(uid);
    return this.http.get(`http://localhost:5000/auth/fetchSearchResult/${uid}`,this.httpOptions);
  }


  fetchAllMale()
  {
    return this.http.get(`http://localhost:5000/auth/fetchAllMale`,this.httpOptions);
  }
  fetchAllFemale()
  {
    return this.http.get(`http://localhost:5000/auth/fetchAllFemale`,this.httpOptions);
  }

  requests(request){
    return this.http.post(`http://localhost:5000/auth/requests/${request.from}/${request.to}`,request,this.httpOptions);
  }

  showrequests(to){
    return this.http.get(`http://localhost:5000/auth/fetchrequests/${to}`,this.httpOptions);
  }

  onerequest(from){
    return this.http.get(`http://localhost:5000/auth/onerequest/${from}`,this.httpOptions);

  }


  savelikes(request)
  {
    return this.http.post(`http://localhost:5000/auth/likes/${request.from}/${request.to}`,request,this.httpOptions);

  }

  fetchlikes(to)
  {
    return this.http.get(`http://localhost:5000/auth/fetchlikes/${to}`,this.httpOptions);

  }

  onelike(from)
  {
    return this.http.get(`http://localhost:5000/auth/onelike/${from}`,this.httpOptions);

  }

  chatrequests(request){
    return this.http.post(`http://localhost:5000/auth/chatrequests`,request,this.httpOptions);
  }

  showchatrequests(uid){
    return this.http.get(`http://localhost:5000/auth/showchatrequests/${uid}`,this.httpOptions);
  }

  acceptchatrequest(user){
    return this.http.put(`http://localhost:5000/auth/acceptchatrequest`,user,this.httpOptions);
  }

  deletechatrequest(uid){
    return this.http.delete(`http://localhost:5000/auth/deletechatrequest/${uid}`,this.httpOptions);
  }

  getchatrequest(uid){
    return this.http.get(`http://localhost:5000/auth/getchatrequest/${uid}`,this.httpOptions);
  }




  // getImages() {
  //   return this.http.get(this.apiURL + 'images');
  //   // .map(res => res.json());
  // }

  // deleteImage(img) {
  //   return this.http.delete(this.apiURL + 'images/' + img._id);
  // }

  // uploadImage(img, desc) {

  //   // Destination URL
  //   const url = this.apiURL + 'images';

  //   // File for Upload
  //   const targetPath = img;

  //   const options: FileUploadOptions = {
  //     fileKey: 'image',
  //     chunkedMode: false,
  //     mimeType: 'multipart/form-data',
  //     params: { desc }
  //   };

  //   const fileTransfer: FileTransferObject = this.transfer.create();

  //   // Use the FileTransfer to upload the image
  //   return fileTransfer.upload(targetPath, url, options);
  // }


  // insertimage(user)
  // {
  //   console.log('auth',user);
  //   return this.http.post('http://localhost:5000/auth/upload',user,this.httpOptionsFile);

  // }

  insertimageblob(user){
    return this.http.post('http://localhost:5000/auth/uploadblob',user,this.httpOptionsFile);
  }

  getImages(uid) {
    // eslint-disable-next-line @typescript-eslint/naming-convention
    return this.http.get(`http://localhost:5000/auth/image/${uid}`,{responseType: "json",observe:"response"});
  }

  deleteImage(id){
    return this.http.delete(`http://localhost:5000/auth/deleteImage/${id}`,this.httpOptions);
  }

  updateSetProfile(user){
    return this.http.put('http://localhost:5000/auth/updateSetProfile',user,this.httpOptions);
  }

  imageCount(uid){
    return this.http.get(`http://localhost:5000/auth/imageCount/${uid}`,this.httpOptions);
  }

  getProfilePhoto(uid,id){
    return this.http.get(`http://localhost:5000/auth/getProfilePhoto/${uid}/${id}`,{responseType: "json",observe:"response"});
  }

  getSetProfileId(uid){
    return this.http.get(`http://localhost:5000/auth/getSetProfileId/${uid}`,this.httpOptions);
  }

  // uploadImage(blobData, name, ext) {
  //   const formData = new FormData();
  //   formData.append('file', blobData, `myimage.${ext}`);
  //   formData.append('name', name);

  //   return this.http.post(`http://localhost:5000/auth/image2`, formData,this.httpOptions);
  // }

  // uploadImageFile(file: File) {
  //   const ext = file.name.split('.').pop();
  //   const formData = new FormData();
  //   formData.append('file', file, `myimage.${ext}`);
  //   formData.append('name', file.name);
  //   console.log(formData);
  //   return this.http.post('http://localhost:5000/auth/image',{file,name:file.name},this.httpOptions);
  // }

  // deleteImage(id) {
  //   return this.http.delete(`${this.url3}/image/${id}`,this.httpOptions);
  // }

}
