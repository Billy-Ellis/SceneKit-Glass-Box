//Created by Billy Ellis
//Credit me if you plan on using this in your own app/game

#import "RootViewController.h"

@implementation RootViewController
- (void)viewDidLoad{
 
[super viewDidLoad];

//prepares the scene

self.view.backgroundColor = [UIColor whiteColor];

SCNView *sceneView = [[SCNView alloc]initWithFrame:self.view.frame];

SCNScene *scene = [SCNScene scene];

sceneView.scene = scene;

[self.view addSubview:sceneView];

sceneView.allowsCameraControl = YES;
sceneView.autoenablesDefaultLighting = YES;

//images for the box to reflect

NSArray *images = [NSArray arrayWithObjects:[UIImage imageNamed:@"right.png"],[UIImage imageNamed:@"left.png"],[UIImage imageNamed:@"top.png"],[UIImage imageNamed:@"bottom.png"],[UIImage imageNamed:@"front.png"],[UIImage imageNamed:@"back.png"],nil];

//the box geometry

SCNBox *box = [SCNBox boxWithWidth:0.5 height:0.5 length:0.5 chamferRadius:0.0];


SCNMaterial *material = [SCNMaterial material];

material.diffuse.contents = [UIColor blackColor];


material.reflective.contents = images;

material.shininess = 0.5;

//material.normal.contents = [UIImage imageNamed:@"normal.png"];

material.specular.contents = [UIColor whiteColor];

box.materials = [NSArray arrayWithObject:material];

//box node

SCNNode *boxNode = [SCNNode nodeWithGeometry:box];

boxNode.position = SCNVector3Make(0,1,0);

//adding the node to the scene

[scene.rootNode addChildNode:boxNode];




}
@end
