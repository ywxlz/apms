<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8"/>
<title>用户注册</title>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->
<link href="css/1140.css" rel="stylesheet"/>
<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>
<link href="css/styles.css" rel="stylesheet" media="all"/>
</head>
<body>

<header>
  <div class="container clearfix">
    <div class="row">
      <div class="twelvecol last">
        <h1 id="title"></h1>
      </div>
    </div>
  </div>
</header>

<div id="main">
<div class="container clearfix">
<div class="row">



  <div class="eightcol last">

    <!-- Begin Form -->

    <form id="my-form" action="registerAction" method="post">

          <div>
          </div>
          <div><label>用户名:</label><input id="username" name="username" type="text"/></div>
          <div><label>密码:</label><input id="pass" name="password" type="password"/></div>
          <div><label>邮箱:</label><input id="email" name="email" data-ideal="required email" type="email"/></div>
          <div><label>生日:</label><input name="date" class="datepicker" data-ideal="date" type="text" placeholder="月/日/年"/></div>
          <div><label>头像:</label><input id="file" name="file" multiple type="file"/></div>
          <div><label>个人网站:</label><input name="website" data-ideal="url" type="text"/></div>
      <div><hr/></div>

      <div>
        <button type="submit">注册</button>
        <button id="reset" type="button">重置</button>
      </div>

    </form>

    <!-- End Form -->

  </div>

</div>
</div>
</div><! -- End Main -->

<footer>
  <div class="container clearfix">
    <div class="row">
      <div class="twelvecol last">
      </div>
    </div>
  </div>
</footer>

<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.idealforms.js"></script>
<script>



  var options = {

    onFail: function() {
      alert( $myform.getInvalid().length +' invalid fields.' )
    },

    inputs: {
      'password': {
        filters: 'required pass',
      },
      'username': {
        filters: 'required username',
        data: {
          //ajax: { url:'validate.php' }
        }
      },
      'file': {
        filters: 'extension',
        data: { extension: ['jpg'] }
      },

      'comments': {
        filters: 'min max',
        data: { min: 50, max: 200 }
      },
      'states': {
        filters: 'exclude',
        data: { exclude: ['default'] },
        errors : {
          exclude: 'Select a State.'
        }
      },
      'langs[]': {
        filters: 'min max',
        data: { min: 2, max: 3 },
        errors: {
          min: 'Check at least <strong>2</strong> options.',
          max: 'No more than <strong>3</strong> options allowed.'
        }
      }
    }
  };

  var $myform = $('#my-form').idealforms(options).data('idealforms');

  $('#reset').click(function(){ $myform.reset().fresh().focusFirst() });
  $myform.focusFirst();

</script>

</body>
</html>