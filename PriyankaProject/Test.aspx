﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="PriyankaProject.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form runat="server" action="" id="registrationform">
  <p>
    E-mail
    <input name="email" data-validation="email">
  </p>
  <p>
    User name
    <input name="user" data-validation="length alphanumeric" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="User name has to be an alphanumeric value (3-12 chars)">
  </p>
  <p>
    Password
    <input name="pass_confirmation" data-validation="strength" 
		 data-validation-strength="2">
  </p>
  <p>
    Repeat password
    <input name="pass" data-validation="confirmation">
  </p>
  <p>
    Birth date
    <input name="birth" data-validation="birthdate" 
		 data-validation-help="yyyy-mm-dd">
  </p>
  <p>
    Country
    <input name="country" id="country" data-validation="country">
  </p>
  <p>
    Profile image
    <input name="image" type="file" data-validation="mime size required" 
		 data-validation-allowing="jpg, png" 
		 data-validation-max-size="300kb" 
		 data-validation-error-msg-required="No image selected">
  </p>
  <p>
    User Presentation (<span id="pres-max-length">100</span> characters left)
    <textarea name="presentation" id="presentation"></textarea>
  </p>
  <p>
    <input type="checkbox" data-validation="required" 
		 data-validation-error-msg="You have to agree to our terms">
    I agree to the <a href="..." target="_blank">terms of service</a>
  </p>
  <p>
    <input type="submit" value="Validate">
    <input type="reset" value="Reset form">
  </p>
</form>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.43/jquery.form-validator.min.js"></script>
<script>

    $.validate({
        modules: 'location, date, security, file',
        onModulesLoaded: function () {
            $('#country').suggestCountry();
        }
    });

    // Restrict presentation length
    $('#presentation').restrictLength($('#pres-max-length'));

</script>
</body>
</html>
