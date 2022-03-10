<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>Login Titolare</title>
  <link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
  <!-- Login Form -->
  <div class="container-login">
    <div class="row justify-content-center">
      <div class="col-xl-6 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Effettua l'accesso alla Dashboard</h1>
                  </div>
<!--                   <form class="user"> -->
                  			<s:form action="LoginTitolare" method="post" theme="simple">
                  					<s:fielderror style="color:red" fieldName="emailpasswordTitolare" />
                  
                    <div class="form-group">
                      <s:textfield name="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
                        placeholder="Inserisci email"/>
                    </div>
                    <div class="form-group">
                     <s:textfield type="password" name="password"  class="form-control" id="exampleInputPassword" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                   
                    </div>
                    <div class="form-group">
                      <s:submit value="Accedi" class="btn btn-primary btn-block"></s:submit>
                    </div>
                    <hr>
                    </s:form>
<!--                   </form> -->
                  <hr>
                  <div class="text-center">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Login Content -->
  <script src="/assets/adminpage/vendor/jquery/jquery.min.js"></script>
  <script src="/assets/adminpage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/adminpage/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="/assets/adminpage/js/ruang-admin.min.js"></script>
</body>

</html>