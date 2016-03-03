.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "FragmentActivity.java"
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"
.field private static final HONEYCOMB:I = 0xb
.field static final MSG_REALLY_STOPPED:I = 0x1
.field static final MSG_RESUME_PENDING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "FragmentActivity"
.field  mCreated:Z
.field final mFragments:Landroid/support/v4/app/FragmentController;
.field final mHandler:Landroid/os/Handler;
.field  mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
.field  mOptionsMenuInvalidated:Z
.field  mReallyStopped:Z
.field  mRequestedPermissionsFromFragment:Z
.field  mResumed:Z
.field  mRetaining:Z
.field  mStopped:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V
new-instance v0, Landroid/support/v4/app/FragmentActivity$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V
invoke-static {v0}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
return-void
.end method
.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
.registers 9
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
if-nez p3, :cond_b
const-string v3, "null"
invoke-static {p2, v3}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_a
return-void
:cond_b
invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;
move-result-object v3
invoke-static {p2, v3}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
instance-of v3, p3, Landroid/view/ViewGroup;
if-eqz v3, :cond_a
move-object v1, p3
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
if-lez v0, :cond_a
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "  "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
const/4 v2, 0x0
:goto_33
if-ge v2, v0, :cond_a
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
add-int/lit8 v2, v2, 0x1
goto :goto_33
.end method
.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
.registers 6
const/4 v0, -0x1
if-ne p3, v0, :cond_7
invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
:goto_6
return-void
:cond_7
and-int/lit16 v0, p3, -0x100
if-eqz v0, :cond_13
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can only use lower 8 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
add-int/lit8 v0, v0, 0x1
shl-int/lit8 v0, v0, 0x8
and-int/lit16 v1, p3, 0xff
add-int/2addr v0, v1
invoke-static {p0, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
goto :goto_6
.end method
.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
.registers 13
const/16 v9, 0x56
const/16 v7, 0x46
const/16 v11, 0x2c
const/16 v10, 0x20
const/16 v8, 0x2e
new-instance v2, Ljava/lang/StringBuilder;
const/16 v6, 0x80
invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v6, 0x7b
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
move-result v6
sparse-switch v6, :sswitch_data_156
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_39
invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z
move-result v6
if-eqz v6, :cond_131
move v6, v7
:goto_40
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z
move-result v6
if-eqz v6, :cond_134
const/16 v6, 0x45
:goto_4b
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z
move-result v6
if-eqz v6, :cond_137
move v6, v8
:goto_55
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z
move-result v6
if-eqz v6, :cond_13b
const/16 v6, 0x48
:goto_60
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z
move-result v6
if-eqz v6, :cond_13e
move v6, v9
:goto_6a
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isClickable()Z
move-result v6
if-eqz v6, :cond_141
const/16 v6, 0x43
:goto_75
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z
move-result v6
if-eqz v6, :cond_144
const/16 v6, 0x4c
:goto_80
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isFocused()Z
move-result v6
if-eqz v6, :cond_147
:goto_8c
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isSelected()Z
move-result v6
if-eqz v6, :cond_14a
const/16 v6, 0x53
:goto_97
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isPressed()Z
move-result v6
if-eqz v6, :cond_a2
const/16 v8, 0x50
:cond_a2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getLeft()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getTop()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v6, 0x2d
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getRight()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getId()I
move-result v1
const/4 v6, -0x1
if-eq v1, v6, :cond_114
const-string v6, " #"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v4
if-eqz v1, :cond_114
if-eqz v4, :cond_114
const/high16 v6, -0x100
and-int/2addr v6, v1
sparse-switch v6, :sswitch_data_164
:try_start_f0
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
move-result-object v3
:goto_f4
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
move-result-object v0
const-string v6, " "
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v6, ":"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v6, "/"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_114
:try_end_114
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_114} :catch_153
:cond_114
const-string v6, "}"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
:sswitch_11e
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:sswitch_123
const/16 v6, 0x49
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:sswitch_12a
const/16 v6, 0x47
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:cond_131
move v6, v8
goto/16 :goto_40
:cond_134
move v6, v8
goto/16 :goto_4b
:cond_137
const/16 v6, 0x44
goto/16 :goto_55
:cond_13b
move v6, v8
goto/16 :goto_60
:cond_13e
move v6, v8
goto/16 :goto_6a
:cond_141
move v6, v8
goto/16 :goto_75
:cond_144
move v6, v8
goto/16 :goto_80
:cond_147
move v7, v8
goto/16 :goto_8c
:cond_14a
move v6, v8
goto/16 :goto_97
:sswitch_14d
:try_start_14d
const-string v3, "app"
goto :goto_f4
:sswitch_150
const-string v3, "android"
:try_end_152
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_14d .. :try_end_152} :catch_153
goto :goto_f4
:catch_153
move-exception v6
goto :goto_114
nop
:sswitch_data_164
.sparse-switch
0x1000000 -> :sswitch_150
0x7f000000 -> :sswitch_14d
.end sparse-switch
:sswitch_data_156
.sparse-switch
0x0 -> :sswitch_11e
0x4 -> :sswitch_123
0x8 -> :sswitch_12a
.end sparse-switch
.end method
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method  doReallyStop(Z)V
.registers 4
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
if-nez v0, :cond_11
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V
:cond_11
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 8
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_6
:cond_6
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v1, "Local FragmentActivity "
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v1, " State:"
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v1, "mCreated="
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Z)V
const-string v1, "mResumed="
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Z)V
const-string v1, " mStopped="
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Z)V
const-string v1, " mReallyStopped="
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v1, "View Hierarchy:"
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
return-void
.end method
.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
if-eqz v0, :cond_b
iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;
:goto_a
return-object v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
return-object v0
.end method
.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
move-result-object v0
return-object v0
.end method
.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 11
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V
shr-int/lit8 v3, p1, 0x10
if-eqz v3, :cond_6c
add-int/lit8 v3, v3, -0x1
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I
move-result v1
if-eqz v1, :cond_17
if-ltz v3, :cond_17
if-lt v3, v1, :cond_34
:cond_17
const-string v4, "FragmentActivity"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Activity result fragment index out of range: 0x"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_33
return-void
:cond_34
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
if-nez v2, :cond_64
const-string v4, "FragmentActivity"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Activity result no fragment exists for index: 0x"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_33
:cond_64
const v4, 0xffff
and-int/2addr v4, p1
invoke-virtual {v2, v4, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_33
:cond_6c
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_33
.end method
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
.registers 2
return-void
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V
:cond_f
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
.parameter
.end parameter
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V
invoke-static {p0, p1}, Ldroidbox/android/support/v4/app/BaseFragmentActivityHoneycomb;->onCreate(Landroid/support/v4/app/BaseFragmentActivityHoneycomb;Landroid/os/Bundle;)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
if-eqz v0, :cond_18
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
iget-object v4, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;
invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
:cond_18
if-eqz p1, :cond_29
const-string v3, "android:support:fragments"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
if-eqz v0, :cond_26
iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;
:cond_26
invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
:cond_29
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V
return-void
.end method
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 6
if-nez p1, :cond_1a
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v2
invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v1
or-int/2addr v0, v1
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_18
:goto_17
return v0
:cond_18
const/4 v0, 0x1
goto :goto_17
:cond_1a
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
goto :goto_17
.end method
.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected onDestroy()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onDestroy()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/4 v1, 0x5
if-ge v0, v1, :cond_13
const/4 v0, 0x4
if-ne p1, v0, :cond_13
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v0
if-nez v0, :cond_13
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
const/4 v0, 0x1
:goto_12
return v0
:cond_13
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_12
.end method
.method public onLowMemory()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onLowMemory()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V
return-void
.end method
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
sparse-switch p1, :sswitch_data_1c
const/4 v0, 0x0
goto :goto_7
:sswitch_d
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_7
:sswitch_14
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_7
nop
:sswitch_data_1c
.sparse-switch
0x0 -> :sswitch_d
0x6 -> :sswitch_14
.end sparse-switch
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onNewIntent(Landroid/content/Intent;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V
return-void
.end method
.method public onPanelClosed(ILandroid/view/Menu;)V
.registers 4
packed-switch p1, :pswitch_data_e
:goto_3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPanelClosed(ILandroid/view/Menu;)V
return-void
:pswitch_7
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V
goto :goto_3
nop
:pswitch_data_e
.packed-switch 0x0
:pswitch_7
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const/4 v1, 0x2
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
:cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchPause()V
return-void
.end method
.method protected onPostResume()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPostResume()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z
return-void
.end method
.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
.registers 4
const/4 v0, 0x0
invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 6
if-nez p1, :cond_1d
if-eqz p3, :cond_1d
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
if-eqz v1, :cond_11
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
invoke-interface {p3}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
:cond_11
invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v1
or-int/2addr v0, v1
:goto_1c
return v0
:cond_1d
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
goto :goto_1c
.end method
.method  onReallyStop()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V
return-void
.end method
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
shr-int/lit8 v4, p1, 0x8
and-int/lit16 v3, v4, 0xff
if-eqz v3, :cond_30
add-int/lit8 v3, v3, -0x1
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I
move-result v1
if-eqz v1, :cond_14
if-ltz v3, :cond_14
if-lt v3, v1, :cond_31
:cond_14
const-string v4, "FragmentActivity"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Activity result fragment index out of range: 0x"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_30
:cond_30
return-void
:cond_31
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
if-nez v2, :cond_61
const-string v4, "FragmentActivity"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Activity result no fragment exists for index: 0x"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_30
:cond_61
and-int/lit16 v4, p1, 0xff
invoke-virtual {v2, v4, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
goto :goto_30
.end method
.method protected onResume()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onResume()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z
return-void
.end method
.method protected onResumeFragments()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchResume()V
return-void
.end method
.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 6
iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
if-eqz v4, :cond_8
const/4 v4, 0x1
invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
:cond_8
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainNonConfig()Ljava/util/List;
move-result-object v1
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
move-result-object v2
if-nez v1, :cond_20
if-nez v2, :cond_20
if-nez v0, :cond_20
const/4 v3, 0x0
:goto_1f
return-object v3
:cond_20
new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V
iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;
iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;
iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;
goto :goto_1f
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "android:support:fragments"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_10
return-void
.end method
.method protected onStart()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStart()V
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
if-nez v0, :cond_19
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V
:cond_19
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStart()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V
return-void
.end method
.method public onStateNotSaved()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V
return-void
.end method
.method protected onStop()V
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStop()V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStop()V
return-void
.end method
.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
return-void
.end method
.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
return-void
.end method
.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_f
invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;
move-result-object v0
invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V
:cond_f
return-void
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 5
const/4 v0, -0x1
if-eq p2, v0, :cond_10
const/high16 v0, -0x1
and-int/2addr v0, p2
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can only use lower 16 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
.registers 6
const/4 v0, -0x1
if-ne p3, v0, :cond_7
invoke-super {p0, p2, v0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V
:goto_6
return-void
:cond_7
const/high16 v0, -0x1
and-int/2addr v0, p3
if-eqz v0, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can only use lower 16 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
add-int/lit8 v0, v0, 0x1
shl-int/lit8 v0, v0, 0x10
const v1, 0xffff
and-int/2addr v1, p3
add-int/2addr v0, v1
invoke-super {p0, p2, v0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_6
.end method
.method public supportFinishAfterTransition()V
.registers 1
invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V
return-void
.end method
.method public supportInvalidateOptionsMenu()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_a
invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V
:goto_9
return-void
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
goto :goto_9
.end method
.method public supportPostponeEnterTransition()V
.registers 1
invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V
return-void
.end method
.method public supportStartPostponedEnterTransition()V
.registers 1
invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V
return-void
.end method
.method public final validateRequestPermissionsRequestCode(I)V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z
if-eqz v0, :cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z
:cond_7
return-void
:cond_8
and-int/lit16 v0, p1, -0x100
if-eqz v0, :cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can only use lower 8 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method