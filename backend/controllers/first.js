const {validationResult} =require('express-validator');

const jwt=require('jsonwebtoken');

const User=require('../models/user');



exports.signup = async(req,res,next)=>{
  const errors=validationResult(req);
  console.log(errors);
  if(!errors.isEmpty()) return;

  const uid=req.body.uid;
  const name=req.body.name;
  const gender=req.body.gender;
  const dob=req.body.dob;
  const mail=req.body.mail;
  const phone_num=req.body.phone_num;
  const password=req.body.password;
  const country=req.body.country;
  const state=req.body.state;
  const city=req.body.city;
  const marital_status=req.body.marital_status;
  const mother_tongue=req.body.mother_tongue;
  const caste=req.body.caste;
  const subcaste=req.body.subcaste;
  const height=req.body.height;
  const highest_degree=req.body.highest_degree;
  const occupation=req.body.occupation;

  try{
    // const userDetails={
    //   uid:uid,
    //   name:name,
    //   gender:gender,
    //   dob:dob,
    //   mail:mail,
    //   phone_num:phone_num,
    //   password:password,
    //   country:country,
    //   state:state,
    //   city:city,
    //   marital_status:marital_status,
    //   mother_tongue:mother_tongue,
    //   religion:religion,
    //   caste:caste,
    //   height:height,
    //   highest_degree:highest_degree,
    //   occupation:occupation

    // };

    const userbasic={
      uid:uid,
      name:name,
      gender:gender,
      dob:dob,
      mail:mail,
      phone_num:phone_num,
      password:password,
      country:country,
      state:state,
      city:city,

    }

    const userpersonal={
      uid:uid,
      marital_status:marital_status,
      mother_tongue:mother_tongue,
      caste:caste,
      subcaste:subcaste,
      height:height,
      weight:null,
      aboutme:null

    }

    const usereducation={
      uid:uid,
      highest_degree:highest_degree,
      occupation:occupation,
      salary:null

    }
    const user=await User.findmail(mail);
    if(user[0].length === 1){
      const error=new Error('User with this email already exists')
      error.statusCode=402;
      throw error;
    }
    const user1=await User.finduid(uid);
    if(user1[0].length === 1){
      const error=new Error('User with this uid already exists')
      error.statusCode=410;
      throw error;
    }

    const usercontact={
      uid:uid
    }
    const userfamily={
      uid:uid
    }
    const userother={
      uid:uid
    }
    const userpartner={
      uid:uid
    }
    const hidevalues={
      uid:uid,
      hide:0
    }
    console.log(hidevalues);


    const result1=await User.savebasic(userbasic);
    const result2=await User.savepersonal(userpersonal);
    const result3=await User.saveeducation(usereducation);
    const r4 = await User.savecontact(usercontact);
    const r5 = await User.savefamily(userfamily);
    const r6 = await User.saveother(userother);
    const r7 = await User.savepartner(userpartner);
    const r8=await User.hidephone(hidevalues);
    const u = await User.insertSetP({uid: uid})


    // console.log(result);

    res.status(200).json({message:'User registered'});

  }catch(err){
    console.log(err);
    if(!err.statusCode){
      err.statusCode=500;
    }
    next(err);
  }


};



exports.verifyemail=async(req,res,next)=>{
  const mail=req.params.mail;
  try{
    const result=await User.findmail(mail);
    res.status(200).json(result);

  }
  catch(err)
  {
    console.log(err.message);
  }
}

exports.verifyuid=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const result=await User.finduid(uid);
    res.status(200).json(result);

  }
  catch(err)
  {
    console.log(err.message);
  }
}

exports.login=async(req,res,next)=>{
  const mail=req.body.mail;
  //const password=cryptr.decrypt(req.body.password);
//const password=md5(req.body.password);
//const password=req.body.password;
const password=req.body.password;

try{
const user=await User.findmail(mail);
if(user[0].length !== 1){
  // res.status(401).json({message:'User with this email could not be found'});
  const error=new Error('User with this email could not be found')
  error.statusCode=401;
  throw error;


}

const storedUser=user[0][0];
//console.log(storedUser.password);
//console.log('password ',password);
// const isEqual = await bcrypt.compare(password,storedUser.password);
var isEqual=false;
if(storedUser.password===password)
{
  isEqual=true;
}

console.log(isEqual);

if(!isEqual){
  const error=new Error('Wrong Password');
  error.statusCode=403;
  console.log('wrong password');
   res.status(403).json({message:'Wrong password'});
  throw error;

}

const token=jwt.sign(
  {
      mail:storedUser.mail,
      userId:storedUser.uid
  },
  'secretfortoken',
  {expiresIn:'1h'}
);



res.status(200).json({token:token,userId:storedUser.uid});

} catch(err){
if(!err.statusCode){
  err.statusCode=500;
}
next(err);

}

};

exports.getMotherTongue=async(req,res,next)=>{
  try{
    const user=await User.getMotherTongue();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};

exports.getCaste=async(req,res,next)=>{
  try{
    const user=await User.getCaste();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};

exports.getSubCaste=async(req,res,next)=>{
  const name=req.params.name;
  try{
    const user=await User.getSubCaste(name);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.geteducation=async(req,res,next)=>{
  try{
    const user=await User.geteducation();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};

exports.getoccupation=async(req,res,next)=>{
  try{
    const user=await User.getoccupation();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};

exports.getsalaryscale=async(req,res,next)=>{
  try{
    const user=await User.getsalaryscale();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};

exports.getheightrange=async(req,res,next)=>{
  try{
    const user=await User.getheightrange();
    res.status(200).json(user);
  }
  catch(err){
    console.log(err.message);
  }
};


exports.getBasicDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  //console.log("uid "+uid);
  try{
    const user=await User.getBasicDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putBasicDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   country: req.body.country,
   state: req.body.state,
   city: req.body.city
  }
  //console.log("basic "+basic);
  try{
    const user=await User.putBasicDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getPersonalDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  //console.log("uid "+uid);
  try{
    const user=await User.getPersonalDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putPersonalDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   martialstatu:req.body.martialstatu,
   mothertongue:req.body.mothertongue,
   caste:req.body.caste,
   subcaste:req.body.subcaste,
   weight:req.body.weight,
   height:req.body.height,
   aboutme:req.body.aboutme,
  }
  //console.log(basic);
  try{
    const user=await User.putPersonalDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getEduDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getEduDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putEduDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   edu:req.body.edu,
   occu:req.body.occu,
   salary:req.body.salary,
  }
  try{
    const user=await User.putEduDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getPartnerDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getPartnerDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putPartnerDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   age_from: req.body.age_from,
   age_to:req.body.age_to,
   height:req.body.height,
   mother_tongue:req.body.mother_tongue,
   highest_degree:req.body.highest_degree,
   occupation:req.body.occupation,
   salary:req.body.salary,
   caste:req.body.caste,
   subcaste:req.body.subcaste
  }
  //console.log(basic);
  try{
    const user=await User.putPartnerDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getFamilyDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getFamilyDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putFamilyDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   father_name:req.body.father_name,
   father_occupation:req.body.father_occupation,
   mother_name:req.body.mother_name,
   mother_occupation:req.body.mother_occupation,
   sibling:req.body.sibling,
   family_type:req.body.family_type,
   family_status:req.body.family_status,
   family_value:req.body.family_value,
  }
  //console.log(basic);
  try{
    const user=await User.putFamilyDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getContactDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getContactDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putContactDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   person_type1:req.body.person_type1,
   person_type1_num1:req.body.person_type1_num1,
   person_type1_num2:req.body.person_type1_num2,
   person_type2:req.body.person_type2,
   person_type2_num1:req.body.person_type2_num1,
   person_type2_num2:req.body.person_type2_num2,
   person_type3:req.body.person_type3,
   person_type3_num1:req.body.person_type3_num1,
   person_type3_num2:req.body.person_type3_num2,
  }
  try{
    const user=await User.putContactDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getOtherDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getOtherDetails(uid);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }

};

exports.putOtherDetails=async(req,res,next)=>{
  const basic = {
   uid: req.body.uid,
   smoke:req.body.smoke,
   drink:req.body.drink,
   diet:req.body.diet,
  }
  try{
    const user=await User.putOtherDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.putSearchDetails=async(req,res,next)=>{
  const basic = {
    uid: req.body.uid,
    marital_statue:req.body.marital_statue,
    age_from:req.body.age_from,
    age_to:req.body.age_to,
    height_from:req.body.height_from,
    height_to:req.body.height_to,
    caste:req.body.caste,
    subcaste:req.body.subcaste,
    country:req.body.country,
    state:req.body.state,
    city:req.body.city,
    highest_degree:req.body.highest_degree,
    occupation:req.body.occupation,
    drink:req.body.drink,
    smoke:req.body.smoke,
    diet:req.body.diet
  }
  //console.log(basic);
  try{
    const user=await User.putSearchDetails(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getSearchDetails=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getSearchDetails(uid);
    //console.log(user);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getSearch=async(req,res,next)=>{
  console.log(req.body);
  const basic = {
    marital_statue:req.body.marital_statue,
    age_from:req.body.age_from,
    age_to:req.body.age_to,
    height_from:req.body.height_from,
    height_to:req.body.height_to,
    caste:req.body.caste,
    subcaste:req.body.subcaste,
    country:req.body.country,
    state:req.body.state,
    city:req.body.city,
    highest_degree:req.body.highest_degree,
    occupation:req.body.occupation,
    drink:req.body.drink,
    smoke:req.body.smoke,
    diet:req.body.diet,
    gender:req.body.gender
  }
  //console.log(basic);
  try{
    const user=await User.getSearch(basic);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.getGender=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    const user=await User.getGender(uid);
    //console.log(user);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.fetchSearchResult=async(req,res,next)=>{
  const uid=req.params.uid;
  console.log(uid);
  try{
    const user=await User.fetchSearchResult(uid);
    //console.log(user);
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};


exports.fetchAllMale=async(req,res,next)=>{
  //console.log("uid "+uid);
  try{
    const user=await User.fetchAllMale();
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.fetchAllFemale=async(req,res,next)=>{
  //console.log("uid "+uid);
  try{
    const user=await User.fetchAllFemale();
    res.status(200).json(user);
  }
  catch(err){
   console.log(err.message);
  }
};




exports.saverequest=async(req,res,next)=>{
  const from=req.params.from;
  const to=req.params.to;
  try{
      const user=await User.saverequest(from,to);
      console.log(user);
      res.status(200).json({meessage:'inserted'});


  }catch(err){
      console.log(err);
  }
};

exports.fetchrequests=async(req,res,next)=>{
  const to=req.params.to;
  try{
      const userinfo=await User.showrequests(to);
      res.status(200).json(userinfo);
  }catch(err){
      if(!err.statusCode){
          err.statusCode=500;
      }
      next(err);

}
};

exports.onerequest=async(req,res,next)=>{
  const from=req.params.from;
  try{
      const userinfo=await User.onerequest(from);
      res.status(200).json(userinfo);
  }catch(err){
      if(!err.statusCode){
          err.statusCode=500;
      }
      next(err);

}

};


exports.savelikes=async(req,res,next)=>{
  const from=req.params.from;
  const to=req.params.to;
  try{
      const user=await User.savelikes(from,to);
      console.log(user);
      res.status(200).json({message:'inserted'});


  }catch(err){
      console.log(err);
  }
};



exports.fetchlikes=async(req,res,next)=>{
  const to=req.params.to;
  try{
      const userinfo=await User.showlikes(to);
      res.status(200).json(userinfo);
  }catch(err){
      if(!err.statusCode){
          err.statusCode=500;
      }
      next(err);

}
};

exports.onelike=async(req,res,next)=>{
  const from=req.params.from;
  try{
      const userinfo=await User.onelike(from);
      res.status(200).json(userinfo);
  }catch(err){
      if(!err.statusCode){
          err.statusCode=500;
      }
      next(err);

}

};

exports.savechatrequest=async(req,res,next)=>{
  const basic = {
   from: req.body.from,
   to: req.body.to,
   status: req.body.status
  }
  try{
      const user=await User.savechatrequest(basic);
      console.log(user);
      res.status(200).json({meessage:'inserted'});


  }catch(err){
      console.log(err);
  }
};

exports.showchatrequests=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
      const userinfo=await User.showchatrequests(uid);
      res.status(200).json(userinfo);
  }catch(err){
    console.log(err.message);
  }
};

exports.acceptchatrequest=async(req,res,next)=>{
  const user = {
    status: req.body.status,
    send_from: req.body.send_from
  }
  try{
      const userinfo=await User.acceptchatrequest(user);
      res.status(200).json(userinfo);
  }catch(err){
    console.log(err.message);
  }
};


exports.deletechatrequest=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
      const userinfo=await User.deletechatrequest(uid);
      res.status(200).json(userinfo);
  }catch(err){
    console.log(err.message);
  }
};

exports.getchatrequest=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
      const userinfo=await User.getchatrequest(uid);
      res.status(200).json(userinfo);
  }catch(err){
    console.log(err.message);
  }
};

exports.image=async(req,res,next)=>{
  const uid=req.params.uid;
  try{
    let imgdata = [];
    const user=await User.image(uid);
    //console.log(user);
    for(let i=0;i<user[0].length;i++){
      const c = Buffer.from(user[0][i]['data'],"utf8")
      const bb = c.toString("utf8");
      imgdata.push({id:user[0][i]['imgId'],image:bb});
    }
    // const buff2 = Buffer.from(user,"base64");
    //const base64D =buff2.toString("utf8");
    //const b = Buffer.from(user[0],"base64");
    //const bb = b.toString("base64");
    // const c = Buffer.from(user[0][0]['data'],"utf8")
    // const bb = c.toString("utf8");

    //console.log(imgdata);

    res.json(imgdata);
  }
  catch(err){
   console.log(err.message);
  }
};

exports.uploadblob=async(req,res,next)=>{

  try{
    //console.log(req.body.img);
    const buff = Buffer.from(req.body.img,"utf8");
    //const base64 = buff.toString("base64");
    //console.log(base64);
    //const buff2 = Buffer.from(base64,"base64");
   // const base64D = buff2.toString("utf8");

    const basic = {
      img: buff,
      uid: req.body.uid
     }
      const user=await User.uploadblob(basic);

      console.log(basic);
      res.status(200).json({meessage:'inserted'});


  }catch(err){
      console.log(err);
  }
};

exports.deleteImage = async(req,res,next) => {
  const id=req.params.id;
  try{
      const userinfo=await User.deleteImage(id);
      res.status(200).json({message:'id delete'});
  }catch(err){
    console.log(err.message);
  }
}

exports.updateSetProfile = async(req,res,next) => {
  const user={
    uid: req.body.uid,
    setProfile: req.body.setProfile,
  }
  try{
    const userinfo=await User.updateSetProfile(user);
    res.status(200).json({message:'updated'});
  }catch(err){
    console.log(err.message);
  }
}

exports.imageCount = async(req,res,next) => {
  const uid=req.params.uid;
  try{
      const count=await User.imageCount(uid);
      res.status(200).json(count);
  }catch(err){
    console.log(err.message);
  }
}

exports.getProfilePhoto = async(req,res,next) => {
  const uid = req.params.uid;
  const id = req.params.id;
  try{
    const img=await User.getProfilePhoto(uid,id);
      //console.log(img[0].length);
      if(img[0].length === 0){ res.status(200).json({message:'no'});}
      else{
        const c = Buffer.from(img[0][0]['data'],"utf8")
        const bb = c.toString("utf8");
        res.status(200).json({message:bb});
      }

  }catch(err){
    console.log(err.message);
  }
}

exports.getSetProfileId = async(req,res,next) => {
  const uid=req.params.uid;
  try{
      const id=await User.getSetProfileId(uid);
      if(id[0].length === 0){
        res.status(200).json({id:null});
      }
      else{
        res.status(200).json({id:id[0][0]['setProfile']});
      }
      //res.status(200).json(id);
  }catch(err){
    console.log(err.message);
  }
}



exports.dislike=async(req,res,next)=>{
  const from=req.params.from;
  const to=req.params.to;
  try{
    const result=await User.dislike(from,to);
    res.status(200).json({message:'deleted'});
  }
  catch(err)
  {
    console.log(err.message);
  }
}


exports.unsendinterest=async(req,res,next)=>{
  const from=req.params.from;
  const to=req.params.to;
  try{
    const result=await User.unsendinterest(from,to);
    res.status(200).json({message:'deleted'});
  }
  catch(err)
  {
    console.log(err.message);
  }
}


exports.getcountrynames=async(req,res,next)=>{
  try{
    const result=await User.getCountries();
    res.status(200).json(result);

  }catch(err)
  {
    console.log(err.message);
  }
}


exports.getstatenames=async(req,res,next)=>{
  try{
    const id=req.params.id;
    const result=await User.getStates(id);
    res.status(200).json(result);

  }
  catch(err)
  {
    console.log(err.message);
  }
}

exports.getcitynames=async(req,res,next)=>{
  try{
    const id=req.params.id;
    const result=await User.getCities(id);
    res.status(200).json(result);

  }
  catch(err)
  {
    console.log(err.message);
  }
}

exports.deleteaccount=async(req,res,next)=>{
  try{
    const uid=req.params.id;
    console.log(uid);
    const r1=await User.deletelikes(uid);
    const r2=await User.deleterequest(uid);
    const r3=await User.deletechatrequest(uid);
    const r4=await User.deletecontact(uid);
    const r5=await User.deleteeducation(uid);
    const r6=await User.deletefamily(uid);
    const r7=await User.deletepartner(uid);
    const r8=await User.deletesearch(uid);
    const r9=await User.deletepersonal(uid);
    const r10=await User.deleteother(uid);
    const r11=await User.deletebasic(uid);
    res.status(200).json({message:'account deleted'});

  }
  catch(err)
  {
    console.log(err.message);

  }
}


exports.displayinterests=async(req,res,next)=>{
  try{
    const uid=req.params.uid;
    const result=await User.displayinterests(uid);
    res.status(200).json(result);

  }catch(err)
  {
    console.log(err.message);
  }

}

exports.updatehidephone=async(req,res,next)=>{
  try{
    const uid=req.body.uid;
    const hide=req.body.hide;
    const user={
      uid:uid,
      hide:hide
    }
    const result=await User.updatehidephone(user);
    res.status(200).json(result);

  }catch(err)
  {
    console.log(err.message);
  }
}


exports.showhiding=async(req,res,next)=>{
  try{
    const uid=req.params.uid;

    const result=await User.showhiding(uid);
    res.status(200).json(result);

  }catch(err)
  {
    console.log(err.message);
  }
}




