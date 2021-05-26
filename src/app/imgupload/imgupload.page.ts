/* eslint-disable prefer-arrow/prefer-arrow-functions */
/* eslint-disable @typescript-eslint/quotes */
/* eslint-disable no-trailing-spaces */
/* eslint-disable prefer-const */
/* eslint-disable object-shorthand */
/* eslint-disable max-len */
/* eslint-disable no-underscore-dangle */
/* eslint-disable @typescript-eslint/naming-convention */
/* eslint-disable @typescript-eslint/member-ordering */
import { Component, OnInit,ElementRef, ViewChild  } from '@angular/core';
import { AuthService,ApiImage } from './../services/auth.service';
import { Plugins, CameraResultType, CameraSource } from '@capacitor/core';
import { Platform, ActionSheetController,ModalController,NavController, LoadingController, ToastController } from '@ionic/angular';
import { Camera, CameraOptions } from '@ionic-native/camera/ngx';
import { read } from 'node:fs';
import { DomSanitizer } from '@angular/platform-browser';
import { ImagePicker } from '@ionic-native/image-picker/ngx';

// import { UploadModalPage } from '../upload-modal/upload-modal.page';
// import { FileTransfer, FileUploadOptions, FileTransferObject } from '@ionic-native/file-transfer/ngx';
//import { File } from '@ionic-native/file/ngx';



@Component({
  selector: 'app-imgupload',
  templateUrl: './imgupload.page.html',
  styleUrls: ['./imgupload.page.scss'],
})
export class ImguploadPage implements OnInit {
  //images: ApiImage[] = [];
  @ViewChild('fileInput', { static: false }) fileInput: ElementRef;
  useruid='';
  public image1: File;
  type = '';
  fileBlob;
  images: any = [];
  imageURI: any;
imageFileName: any;

userImg: any = '';
base64Img = '';
img_name;
 base64String = '';

 croppedImagepath = "";
  isLoading = false;

  imagePickerOptions = {
    maximumImagesCount: 1,
    quality: 50
  };

  constructor(private api: AuthService,
    private imagePicker: ImagePicker,
    //private modalCtrl: ModalController ,
  //   private file: File,
  //   private plt: Platform,
     private actionSheetCtrl: ActionSheetController,
  //   public navCtrl: NavController,
  private sanitizer: DomSanitizer,
   private camera: Camera,
  // public loadingCtrl: LoadingController,
  // public toastCtrl: ToastController
  ) {
    //this.loadImages();
    // this.reloadImages();
  }

  ngOnInit() {
    this.getImage();
  }

  pickImage(sourceType) {
    const options: CameraOptions = {
      quality: 100,
      sourceType: sourceType,
      destinationType: this.camera.DestinationType.FILE_URI,
      encodingType: this.camera.EncodingType.JPEG,
      mediaType: this.camera.MediaType.PICTURE
    };
    this.camera.getPicture(options).then(async (imageData) => {
      console.log('get',imageData);
      //let base64Image = 'data:image/jpeg;base64,' + imageData;
      const base64Response = await fetch('data:image/jpeg;base64,'+ imageData);
        const blob = await base64Response.blob();
        // let base64String = await this.convertBlobToBase64(blob);
        // console.log('base64',base64String);
       //console.log('image data =>  ', blob);
       console.log('uploading file');
       this.api.insertimageblob({img:blob}).subscribe((msg)=>{
        console.log('msg',msg);
      });
    }, (err) => {
      console.log(err);
    });
  }

  async selectImage() {
    const actionSheet = await this.actionSheetCtrl.create({
      header: "Select Image source",
      buttons: [{
        text: 'Load from Library',
        handler: () => {
          this.pickImage(this.camera.PictureSourceType.PHOTOLIBRARY);
        }
      },
      {
        text: 'Use Camera',
        handler: () => {
          this.pickImage(this.camera.PictureSourceType.CAMERA);
        }
      },
      {
        text: 'Cancel',
        role: 'cancel'
      }
      ]
    });
    await actionSheet.present();
  }

  convertBlobToBase64 = (blob) => new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(blob);
    reader.onloadend = () => {
        console.log(reader.result);
    };
//reader.readAsText(blob);
    //reader.readAsDataURL(blob);

});
  getImage(){
    let base64String;

     this.api.getImages().subscribe(async (msg)=>{
       console.log('msg1',msg);
       //let blob1 = new Blob([new Uint8Array(msg)]);
      // console.log('b',blob1);
      // const imageUrl = URL.createObjectURL(blob1);
      // console.log(imageUrl);
      // this.img_name = imageUrl;
     //base64String = await this.convertBlobToBase64(msg.body);
      // const reader = new FileReader();
      // reader.readAsDataURL(blob1);
      // reader.onloadend = () => {
      //         console.log(reader.result);
      //     };
      //console.log('base',base64String);
      //this.img_name = base64String;
      //this.img_name = 'data:image/jpeg;base64,'+ msg[1][0]._buf.data;
      // console.log(this.img_name);

     });

  }
//all good from
  // getImage1() {
  //   const options: CameraOptions = {
  //     quality: 100,
  //     destinationType: this.camera.DestinationType.FILE_URI,
  //     sourceType: this.camera.PictureSourceType.PHOTOLIBRARY
  //   };

  //   this.camera.getPicture(options).then(async (imgData) => {
  //      console.log(imgData);
  //   this.base64Img = 'data:image/jpeg;base64,' + imgData;
  //   this.userImg = this.base64Img;
  //   const base64Response = await fetch(this.userImg);
  //   const blob = await base64Response.blob();
  //  console.log('image data =>  ', blob);
  //  this.api.insertimageblob({img:blob}).subscribe((msg)=>{
  //   console.log('msg',msg);
  // });
  //   }, (err) => {
  //     console.log(err);
  //     //this.presentToast(err);
  //   });
  // }
//till here

//   async uploadFile() {
//     let loader = await this.loadingCtrl.create({
//       message: 'Uploading...'
//     });
//     loader.present();
//     const fileTransfer: FileTransferObject = new FileTransferObject();

//     let options: FileUploadOptions = {
//       fileKey: 'ionicfile',
//       fileName: 'ionicfile',
//       chunkedMode: false,
//       mimeType: "image/jpeg",
//       headers: {}
//     };

//     fileTransfer.upload(this.imageURI, 'http://localhost:5000/api/uploadImage', options)
//       .then((data) => {
//         console.log('data',data);
//       //console.log(data+" Uploaded Successfully");
//       this.imageFileName = "http://localhost:5000/api/uploadImage";
//       loader.dismiss();
//       this.presentToast("Image uploaded successfully");
//     }, (err) => {
//       console.log(err);
//       loader.dismiss();
//       this.presentToast(err);
//     });
//   }

//   async presentToast(msg) {
//     let toast = await this.toastCtrl.create({
//       message: msg,
//       duration: 3000,
//       position: 'bottom'
//     });

//     toast.onDidDismiss();

//     toast.present();
//   }

  // reloadImages() {
  //   this.imagesProvider.getImages().subscribe(data => {
  //     this.images = data;
  //   });
  // }

  // deleteImage(img) {
  //   this.imagesProvider.deleteImage(img).subscribe(data => {
  //     this.reloadImages();
  //   });
  // }

  // async openImage(img) {
  //   let modal = this.modalCtrl.create('PreviewModalPage', { img: img });
  //   (await modal).present();
  // }

  // async presentActionSheet() {
  //   const actionSheet = this.actionSheetCtrl.create({

  //     buttons: [
  //       {
  //         text: 'Load from Library',
  //         handler: () => {
  //           this.takePicture(this.camera.PictureSourceType.PHOTOLIBRARY);
  //         }
  //       },
  //       {
  //         text: 'Use Camera',
  //         handler: () => {
  //           this.takePicture(this.camera.PictureSourceType.CAMERA);
  //         }
  //       },
  //       {
  //         text: 'Cancel',
  //         role: 'cancel'
  //       }
  //     ]
  //   });
  //   (await actionSheet).present();
  // }

  // public takePicture(sourceType) {
  //   // Create options for the Camera Dialog
  //   const options = {
  //     quality: 100,
  //     destinationType: this.camera.DestinationType.FILE_URI,
  //     sourceType: sourceType,
  //     saveToPhotoAlbum: false,
  //     correctOrientation: true
  //   };

  //   // Get the data of an image
  //   this.camera.getPicture(options).then(async (imagePath) => {
  //     //let modal = this.modalCtrl.create(UploadModalPage, { data: imagePath });
  //     const modal = await this.modalCtrl.create({
  //       component: UploadModalPage,
  //       componentProps: { data: imagePath }
  // });
  //     modal.present();
  //     modal.dismiss(data => {
  //       if (data && data.reload) {
  //         this.reloadImages();
  //       }
  //     });
  //   }, (err) => {
  //     console.log('Error: ', err);
  //   });
  // }

//   changeFile(file) {
//     return new Promise((resolve, reject) => {
//         const reader = new FileReader();
//         reader.readAsDataURL(file);
//         reader.onload = () => resolve(reader.result);
//         reader.onerror = error => reject(error);
//     });
// }


//   onFileChange(fileChangeEvent){
//     // this.image=fileChnageEvent.target.files[0];
//     this.image1=fileChangeEvent.target.files[0];
//     this.type = this.image1.type;
//     //console.log(this.image1);
//    }

//    upload(){
//     this.changeFile( this.image1).then((base64: string): any => {
//       //console.log('base64',base64);
//        this.img_name = fetch(base64).then(
//          res=>res.blob());
//          console.log(this.img_name);
//       // this.fileBlob = this.b64Blob([base64], this.type);
//       // console.log(this.fileBlob);
//   });
//     const formData = new FormData();
//     formData.append('uid',this.useruid);

//     formData.append('photo',this.image1 ,this.image1.name);
// const up = {uid:this.useruid,photo:this.image1};
//console.log(formData);
    // this.api.insertimage(formData).subscribe((msg)=>{
    //   console.log('msg',msg);
    // });

  // }

//    //////

//   //  loadImages() {
//   //   this.api.getImages().subscribe(images => {
//   //     this.images = images;
//   //   });
//   // }

//   async selectImageSource() {
//     const buttons = [
//       {
//         text: 'Take Photo',
//         icon: 'camera',
//         handler: () => {
//           this.addImage(CameraSource.Camera);
//         }
//       },
//       {
//         text: 'Choose From Photos Photo',
//         icon: 'image',
//         handler: () => {
//           this.addImage(CameraSource.Photos);
//         }
//       }
//     ];

//     // Only allow file selection inside a browser
//     if (!this.plt.is('hybrid')) {
//       buttons.push({
//         text: 'Choose a File',
//         icon: 'attach',
//         handler: () => {
//           this.fileInput.nativeElement.click();
//         }
//       });
//     }

//     const actionSheet = await this.actionSheetCtrl.create({
//       header: 'Select Image Source',
//       buttons
//     });
//     await actionSheet.present();
//   }

//   async addImage(source: CameraSource) {
//     const image = await Camera.getPhoto({
//       quality: 60,
//       allowEditing: true,
//       resultType: CameraResultType.Base64,
//       source
//     });

//     const blobData = this.b64toBlob(image.base64String, `image/${image.format}`);
//     const imageName = 'Give me a name';

//     this.api.uploadImage(blobData, imageName, image.format).subscribe((newImage: ApiImage) => {
//       this.images.push(newImage);
//     });
//   }

//   // Used for browser direct file upload
//   uploadFile(event) {

//     const eventObj: MSInputMethodContext = event as MSInputMethodContext;
//     const target: HTMLInputElement = eventObj.target as HTMLInputElement;
//     const file: File = target.files[0];
//     this.api.uploadImageFile(file).subscribe((newImage: ApiImage) => {
//       this.images.push(newImage);
//     });
//   }

//   deleteImage(image: ApiImage, index) {
//     this.api.deleteImage(image._id).subscribe(res => {
//       this.images.splice(index, 1);
//     });
//   }

//   // Helper function
//   // https://stackoverflow.com/questions/16245767/creating-a-blob-from-a-base64-string-in-javascript
//   b64toBlob(b64Data, contentType = '', sliceSize = 512) {
//     const byteCharacters = atob(b64Data);
//     const byteArrays = [];

//     for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
//       const slice = byteCharacters.slice(offset, offset + sliceSize);

//       const byteNumbers = new Array(slice.length);
//       for (let i = 0; i < slice.length; i++) {
//         byteNumbers[i] = slice.charCodeAt(i);
//       }

//       const byteArray = new Uint8Array(byteNumbers);
//       byteArrays.push(byteArray);
//     }

//     const blob = new Blob(byteArrays, { type: contentType });
//     return blob;
//   }

}
