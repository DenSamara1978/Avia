//
//  SceneDelegate.m
//  Avia
//
//  Created by Denis Vlaskin on 12.11.2020.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession*)session options:(UISceneConnectionOptions*)connectionOptions {
    UIWindowScene* windowScene = (UIWindowScene*) scene;
    UIWindow* window = [[UIWindow alloc] initWithFrame:windowScene.coordinateSpace.bounds];
    window.windowScene = windowScene;
    
    ViewController* vc = [ViewController new];
    window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [window makeKeyAndVisible];
    self.window = window;
}

- (void)sceneDidDisconnect:(UIScene *)scene {
}

- (void)sceneDidBecomeActive:(UIScene *)scene {
}

- (void)sceneWillResignActive:(UIScene *)scene {
}

- (void)sceneWillEnterForeground:(UIScene *)scene {
}

- (void)sceneDidEnterBackground:(UIScene *)scene {
}

@end
