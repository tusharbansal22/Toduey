import React from "react";
import "./signup.css"
import CSRFToken from "./csrf";

function SignUp(){
    
    return <div className="signup">
    <h3>Create your account!</h3>
    <form method="POST" action="/signup" >
    <CSRFToken />
      <div class="form-group">
          <label for="username">Username</label>
          <input type="text" class="form-control" id="username" name="username" placeholder="Create A Username (use only letters and numbers)" Required></input>
      </div>
      <div class="form-group">
          <label for="fname">First Name</label>
          <input type="text" class="form-control" id="fname" name="fname" placeholder="Enter Your First Name" Required></input>
      </div>
      <div class="form-group">
          <label for="lname">Last Name</label>
          <input type="text" class="form-control" id="lname" name="lname" placeholder="Enter Your Last Name" Required></input>
      </div>
      <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email Address" Required></input>
      </div>
      <div class="form-group">
          <label for="pass1">Password</label>
          <input type="password" class="form-control" id="pass1" name="pass1" placeholder="Create Your Password" Required></input>
      </div>
      <div class="form-group">
          <label for="pass2">Confirm Password</label>
          <input type="password" class="form-control" id="pass2" name="pass2" placeholder="Confirm Your Password" Required></input>
      </div>
      <button type="submit" class="btn btn-primary">Sign Up</button>
  </form>
  </div>
}

export default SignUp;

