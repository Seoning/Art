<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	.card{
		height: 600px;
		margin:auto;
	}
	.badge{
		font-size: 12pt;
		height: 30px;
	}
	.col-xs-3{
		width:250px;
	}
</style>

<br>
<div id="row">
	 <div class="bs-component">
	   <div class="card border-primary mb-3" style="max-width: 50rem;">
	     <div class="card-header">Sign_up for Art_See</div>
		<form action="signUp.mem" method="post" class="form-group row">
	       <div class="card-body">
	           <h4 class="card-title">회원가입</h4>
		            <div class="bs-docs-section">

      
                <fieldset>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1" class="form-label mt-4">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                
              </form>
            </div>
          </div>
      
              <div class="form-group has-success">
                <label class="form-label mt-4" for="inputValid">Valid input</label>
                <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
                <div class="valid-feedback">Success! You've done it.</div>
              </div>

              <div class="form-group has-danger">
                <label class="form-label mt-4" for="inputInvalid">Invalid input</label>
                <input type="text" value="wrong value" class="form-control is-invalid" id="inputInvalid">
                <div class="invalid-feedback">Sorry, that username's taken. Try another?</div>
              </div>

              <div class="form-group">
                <label class="col-form-label mt-4" for="inputDefault">Default input</label>
                <input type="text" class="form-control" placeholder="Default input" id="inputDefault">
              </div>

             
              <div class="form-group">
                <label class="form-label mt-4">Input addons</label>
                <div class="form-group">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                    <button class="btn btn-primary" type="button" id="button-addon2">Button</button>
                  </div>
                </div>
              </div>

            

		           		
	           
	      		</div>
			<input type="submit" value="가입하기" class="btn btn-primary">
		</form>
    </div>
  </div>
</div>




<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>