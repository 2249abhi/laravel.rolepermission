<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        Permission Management
                    </li>
                    <li><a class="nav-link" href="{{ route('home') }}">Dashboard</a></li>
                    <?php 
                    $i = 0;
                    foreach($response['roledata'] as $navaction) { ?>
                    <li class="nav-item">
                        <a class="nav-link here" href="#<?= $i; ?>" data-toggle="collapse" aria-expanded="false"
                            data-target="#submenu-<?= $i; ?>" aria-controls="submenu-<?= $i; ?>">
                            <i
                                class="fa <?=$navaction['ParentModule']['icon']?>"></i><?=$navaction['ParentModule']['name']?>
                            <span class="badge badge-success"><?= $i; ?></span></a>

                        <?php if(count($navaction['ChildModule'])){ ?>
                        <!--========================================-->
                        <div id="submenu-<?= $i; ?>" class="collapse submenu" style=""><!--show-->
                            <ul class="nav flex-column">
                                <?php foreach($navaction['ChildModule'] as $Subnavaction) { 
                                    $cusac = lcfirst(str_replace('-', '',ucwords($Subnavaction['action'], "-")));
                                    $cuscont = str_replace('-', '',ucwords($Subnavaction['controller'], "-"));
                                    $str = '';
                                    $routeName = $Subnavaction['controller'].'.'.$Subnavaction['action'];
                                    //print_r($Subnavaction);
                                    if(($response['controller'] == $Subnavaction['controller'] || $response['controller'] == $cuscont) && ($response['action'] == $cusac)){
                                        $str="active";
                                    }else{
                                        $str="";
                                    } ?>
                                <li class="nav-item">
                                    <a class="{{ Route::currentRouteName() == $routeName ? 'active' : '' }} nav-item" href="{{ route($routeName) }}"><?= $Subnavaction['name'] ?></a>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                        <!--========================================-->
                        <?php } ?>
                    </li>
                    <?php $i++; } ?>
                    <!-- <li class="nav-item ">
                        <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false"
                            data-target="#submenu-1" aria-controls="submenu-1"><i
                                class="fa fa-fw fa-user-circle"></i>Dashboard <span
                                class="badge badge-success">6</span></a>
                        <div id="submenu-1" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item"><a class="nav-link" href="#">Influencer</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Influencer Finder</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Influencer Profile</a></li>
                            </ul>
                        </div>
                    </li> -->
                </ul>
            </div>
        </nav>
    </div>
</div>