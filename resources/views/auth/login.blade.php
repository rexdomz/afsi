@extends('layouts.app')
@section('content')

<div class="login-box">
  <div class="login-logo">    
    <img src="{{ asset('img/afsi-logo.png') }}" class="applogo" alt="User Image">      
  </div>    
  <!-- /.login-logo -->
  <div class="login-box-body">    
    <h4 style="text-align: center" >Member Access</h4>
    <form class="form-horizontal" method="POST" action="{{ route('login') }}">
        <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                <label for="email" class="col-md-4 control-label">E-Mail</label>

                <div class="col-md-8">
                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                    @if ($errors->has('email'))
                        <span class="help-block">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                <label for="password" class="col-md-4 control-label">Password</label>

                <div class="col-md-8">
                    <input id="password" type="password" class="form-control" name="password" required>

                    @if ($errors->has('password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <!--<div class="form-group">
                <div class="col-md-6 col-md-offset-1">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                        </label>
                    </div>
                </div>
            </div>-->

            <div class="form-group">
                <div class="col-md-8 col-md-offset-4">
                    <button type="submit" class="btn btn-primary afsibtn">
                        Login
                    </button>

                    <!--<a class="btn btn-link" href="{{ route('password.request') }}">
                        Forgot Your Password?
                    </a>-->
                </div>
            </div>
        </div>    
    </form>    

    <p class="login-box-msg">This is for Member Login <br> Try <a href="{{ URL::route('admin.home') }}"><strong>Admin Login</strong></a></p>

  </div>
  <!-- /.login-box-body -->
  
</div>
<!-- /.login-box -->


@endsection
