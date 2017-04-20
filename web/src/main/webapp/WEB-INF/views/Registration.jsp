<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="templates/header.jsp"%>
	<div class="container">

		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form data-toggle="validator" role="form" action="<c:url value="/Register/new" ></c:url>"
					method="post">
					<h2 class="text-center" style="color: #FAFAFA">REGISTRATION</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group has-feedback">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-user fa-fw"></i></span> 
									<input type="text"
									name="first_name" id="first_name" class="form-control input-lg "
									placeholder="First Name" data-error="Ne hagyd üresen!" required>
							</div>
							     <span class="glyphicon form-control-feedback" style="padding-top:6px" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </div>
  </div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group has-feedback">
							 <div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-user fa-fw"></i></span> <input type="text"
									name="last_name" id="last_name" class="form-control input-lg"
									placeholder="Last Name" data-error="Ne hagyd üresen!" required>
							</div>
							<span class="glyphicon form-control-feedback" style="padding-top:6px" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
							</div>
						</div>
					</div>
					
			
			<div class="form-group has-feedback">
			 <div class="input-group">
						<span class="input-group-addon"><i
							class="fa fa-user-circle-o"></i></span> <input type="text"
							name="user_name" id="user_name" class="form-control input-lg"
							placeholder="Username" data-error="Ne hagyd üresen" required>
					</div>
					
					       <span class="glyphicon form-control-feedback" style="padding-top:6px" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </div>
					<div class="form-group has-feedback">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
						<input type="email" name="email" id="inputEmail"
							class="form-control input-lg" placeholder="Email Address"
							data-error="Bruh, that email address is invalid" required>
							</div>
							<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </div>
  
					
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
						  <div class="form-group has-feedback">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-key"></i></span>
								<input type="password" name="password" data-minlength="3" id="password"
									class="form-control input-lg" placeholder="Password" data-error="Minimum 3 karakter" required
									>
							</div>
							<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
						  <div class="form-group has-feedback">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-key"></i></span>
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-lg"
									placeholder="Confirm Password" data-minlength="3"
									data-error="Minimum 3 karakter" required
									>
							</div>
							<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
							</div>
						</div>
					</div>
					<div class="form-group has-feedback">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="fa fa-location-arrow"></i></span> <input type="text"
							name="address" id="address" class="form-control input-lg"
							placeholder="Address" data-error="Ne hagyd üresen" required>
					</div>
					<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
					</div>
					<div class="form-group has-feedback">
					<div class="input-group date" data-provide="datepicker">
						<div class="input-group-addon">
							<span class="fa fa-calendar-o"></span>
						</div>
						<input type="text" name="date" class="form-control input-lg" placeholder="Date of birth"
							id="datepicker" data-error="Ki kell választanod a dátumot" required>
						
					</div>
					<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
					</div>
					<div class="row form-group">
						<div class="col-xs-12">
							<legend style="color: #FAFAFA">Gender</legend>
							<div data-toggle="buttons">

								<label id="female1" class="btn btn-default btn-circle btn-lg"
									style="outline: none"> <input type="radio" id="female"
									name="sex" value="Female"><i class="fa fa-female" required></i></label>
								<label id="male1" class="btn btn-default btn-circle btn-lg"
									style="outline: none"> <input type="radio" id="male"
									name="sex" value="Male" required><i class="fa fa-male"></i></label>
							</div>
							<p></p>

						</div>
					</div>
					<div class="form-group has-feedback">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-phone"></i></span>
						<input type="text" name="phone" id="phone"
							class="form-control input-lg" placeholder="Phone" data-error="Érvényes telefonszámot adj meg" required>
					</div>
					<span class="glyphicon form-control-feedback" style="padding-top:6px"aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
					</div>
					<div class="row form-group">
						<div class="col-xs-4 col-sm-3 col-md-3">
							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info"> Elfogadom
									</button> <input type="checkbox" name="t_and_c" id="t_and_c" data-error="El kell fogadnod a feltételeket" required
								class="hidden" value="1">
							</span>
							<div class="help-block with-errors"></div>
						</div>
						<div class="col-xs-8 col-sm-9 col-md-9">
							By clicking <strong class="label label-primary">Register</strong>,
							you agree to the <a href="#" data-toggle="modal"
								data-target="#t_and_c_m">Terms and Conditions</a> set out by
							this site, including our Cookie Use.
						</div>
                
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="Register"
								class="btn btn-primary btn-block btn-lg gomb" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="login.jsp" class="btn btn-success btn-block btn-lg gomb">Sign
								In</a>
						</div>
					</div>
					<input type="hidden"
						   name="${_csrf.parameterName}"
						   value="${_csrf.token}"/>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>