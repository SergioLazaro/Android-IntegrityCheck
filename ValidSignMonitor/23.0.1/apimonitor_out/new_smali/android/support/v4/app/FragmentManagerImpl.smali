.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator; = null
.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator; = null
.field static final ANIM_DUR:I = 0xdc
.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3
.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4
.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5
.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6
.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1
.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2
.field static DEBUG:Z = false
.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator; = null
.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator; = null
.field static final HONEYCOMB:Z = false
.field static final TAG:Ljava/lang/String; = "FragmentManager"
.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"
.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"
.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"
.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"
.field static sAnimationListenerField:Ljava/lang/reflect/Field;
.field  mActive:Ljava/util/ArrayList;
.field  mAdded:Ljava/util/ArrayList;
.field  mAvailBackStackIndices:Ljava/util/ArrayList;
.field  mAvailIndices:Ljava/util/ArrayList;
.field  mBackStack:Ljava/util/ArrayList;
.field  mBackStackChangeListeners:Ljava/util/ArrayList;
.field  mBackStackIndices:Ljava/util/ArrayList;
.field  mContainer:Landroid/support/v4/app/FragmentContainer;
.field  mController:Landroid/support/v4/app/FragmentController;
.field  mCreatedMenus:Ljava/util/ArrayList;
.field  mCurState:I
.field  mDestroyed:Z
.field  mExecCommit:Ljava/lang/Runnable;
.field  mExecutingActions:Z
.field  mHavePendingDeferredStart:Z
.field  mHost:Landroid/support/v4/app/FragmentHostCallback;
.field  mNeedMenuInvalidate:Z
.field  mNoTransactionsBecause:Ljava/lang/String;
.field  mParent:Landroid/support/v4/app/Fragment;
.field  mPendingActions:Ljava/util/ArrayList;
.field  mStateArray:Landroid/util/SparseArray;
.field  mStateBundle:Landroid/os/Bundle;
.field  mStateSaved:Z
.field  mTmpActions:[Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 5
const/4 v0, 0x0
const/high16 v4, 0x4020
const/high16 v3, 0x3fc0
sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z
const/4 v0, 0x0
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
return-void
.end method
.method private checkStateLoss()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not perform this action after onSaveInstanceState"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
if-eqz v0, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not perform this action inside of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
return-void
.end method
.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
.registers 7
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
return-object v0
.end method
.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
.registers 16
new-instance v10, Landroid/view/animation/AnimationSet;
const/4 v1, 0x0
invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/4 v5, 0x1
const/high16 v6, 0x3f00
const/4 v7, 0x1
const/high16 v8, 0x3f00
move v1, p1
move v2, p2
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v9, Landroid/view/animation/AlphaAnimation;
invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
return-object v10
.end method
.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
.registers 5
const/4 v2, 0x1
instance-of v3, p0, Landroid/view/animation/AlphaAnimation;
if-eqz v3, :cond_6
:cond_5
:goto_5
return v2
:cond_6
instance-of v3, p0, Landroid/view/animation/AnimationSet;
if-eqz v3, :cond_22
check-cast p0, Landroid/view/animation/AnimationSet;
invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
:goto_11
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-ge v1, v3, :cond_22
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Landroid/view/animation/AlphaAnimation;
if-nez v3, :cond_5
add-int/lit8 v1, v1, 0x1
goto :goto_11
:cond_22
const/4 v2, 0x0
goto :goto_5
.end method
.method public static reverseTransit(I)I
.registers 2
const/4 v0, 0x0
sparse-switch p0, :sswitch_data_e
:goto_4
return v0
:sswitch_5
const/16 v0, 0x2002
goto :goto_4
:sswitch_8
const/16 v0, 0x1001
goto :goto_4
:sswitch_b
const/16 v0, 0x1003
goto :goto_4
:sswitch_data_e
.sparse-switch
0x1001 -> :sswitch_5
0x1003 -> :sswitch_b
0x2002 -> :sswitch_8
.end sparse-switch
.end method
.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
.registers 8
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
move-result v3
if-eqz v3, :cond_4
const/4 v2, 0x0
:try_start_c
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
if-nez v3, :cond_20
const-class v3, Landroid/view/animation/Animation;
const-string v4, "mListener"
invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v3
sput-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:cond_20
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Landroid/view/animation/Animation$AnimationListener;
move-object v2, v0
:try_end_2a
.catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_2a} :catch_33
.catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_2a} :catch_3c
:goto_2a
new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
invoke-direct {v3, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
goto :goto_4
:catch_33
move-exception v1
const-string v3, "FragmentManager"
const-string v4, "No field with the name mListener is found in Animation class"
invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2a
:catch_3c
move-exception v1
const-string v3, "FragmentManager"
const-string v4, "Cannot access Animation\'s mListener field"
invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2a
.end method
.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_1a
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_1a
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private throwException(Ljava/lang/RuntimeException;)V
.registers 9
const-string v3, "FragmentManager"
invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v3, "FragmentManager"
const-string v4, "Activity state:"
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Landroid/support/v4/util/LogWriter;
const-string v3, "FragmentManager"
invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/PrintWriter;
invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v3, :cond_35
:try_start_20
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
const-string v4, "  "
const/4 v5, 0x0
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/String;
invoke-virtual {v3, v4, v5, v2, v6}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c
:goto_2b
throw p1
:catch_2c
move-exception v0
const-string v3, "FragmentManager"
const-string v4, "Failed dumping state"
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
:cond_35
:try_start_35
const-string v3, "  "
const/4 v4, 0x0
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/String;
invoke-virtual {p0, v3, v4, v2, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f
goto :goto_2b
:catch_3f
move-exception v0
const-string v3, "FragmentManager"
const-string v4, "Failed dumping state"
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
.end method
.method public static transitToStyleIndex(IZ)I
.registers 3
const/4 v0, -0x1
sparse-switch p0, :sswitch_data_18
:goto_4
return v0
:sswitch_5
if-eqz p1, :cond_9
const/4 v0, 0x1
:goto_8
goto :goto_4
:cond_9
const/4 v0, 0x2
goto :goto_8
:sswitch_b
if-eqz p1, :cond_f
const/4 v0, 0x3
:goto_e
goto :goto_4
:cond_f
const/4 v0, 0x4
goto :goto_e
:sswitch_11
if-eqz p1, :cond_15
const/4 v0, 0x5
:goto_14
goto :goto_4
:cond_15
const/4 v0, 0x6
goto :goto_14
nop
:sswitch_data_18
.sparse-switch
0x1001 -> :sswitch_5
0x1003 -> :sswitch_11
0x2002 -> :sswitch_b
.end sparse-switch
.end method
.method  addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V
return-void
.end method
.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_28
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "add: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_28
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_69
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_50
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment already added: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_50
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_64
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_64
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_64
if-eqz p2, :cond_69
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V
:cond_69
return-void
.end method
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
.registers 7
monitor-enter p0
:try_start_1
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-eqz v2, :cond_d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-gtz v2, :cond_4c
:cond_d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-nez v2, :cond_18
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
:cond_18
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_44
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Setting back stack index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_44
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
move v1, v0
:goto_4b
return v1
:cond_4c
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_86
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Adding back stack index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " with "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_86
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
monitor-exit p0
move v1, v0
goto :goto_4b
:catchall_8e
move-exception v2
monitor-exit p0
:try_end_90
.catchall {:try_start_1 .. :try_end_90} :catchall_8e
throw v2
.end method
.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already attached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v3, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1e
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "attach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v0, :cond_8a
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v0, :cond_8a
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v0, :cond_33
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_33
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment already added: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_54
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_70
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "add from attach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_81
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_81
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_81
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_8a
return-void
.end method
.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
.registers 2
new-instance v0, Landroid/support/v4/app/BackStackRecord;
invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
return-object v0
.end method
.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v5, 0x0
const/4 v2, 0x1
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1e
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "detach: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_60
iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_60
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v0, :cond_4d
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_48
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "remove from detach: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_48
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_4d
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_57
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_57
iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_57
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_60
return-void
.end method
.method public dispatchActivityCreated()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x2
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_22
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_22
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_1e
return v2
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_22
const/4 v2, 0x0
goto :goto_1e
.end method
.method public dispatchCreate()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.registers 8
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v4, :cond_2d
const/4 v1, 0x0
:goto_7
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_2d
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_2a
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v4
if-eqz v4, :cond_2a
const/4 v3, 0x1
if-nez v2, :cond_27
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:cond_27
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2a
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_2d
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
if-eqz v4, :cond_50
const/4 v1, 0x0
:goto_32
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_50
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_4a
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4d
:cond_4a
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V
:cond_4d
add-int/lit8 v1, v1, 0x1
goto :goto_32
:cond_50
iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
return v3
.end method
.method public dispatchDestroy()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public dispatchDestroyView()V
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchLowMemory()V
.registers 4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_22
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_22
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_1e
return v2
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_22
const/4 v2, 0x0
goto :goto_1e
.end method
.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchPause()V
.registers 3
const/4 v0, 0x4
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 6
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v3, :cond_22
const/4 v1, 0x0
:goto_6
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_22
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v3
if-eqz v3, :cond_1f
const/4 v2, 0x1
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_22
return v2
.end method
.method public dispatchReallyStop()V
.registers 3
const/4 v0, 0x2
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchResume()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x5
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchStart()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x4
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dispatchStop()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x3
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 13
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "    "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v6, :cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_5d
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Active Fragments in "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, ":"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_38
if-ge v3, v0, :cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v2}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
if-eqz v2, :cond_5a
invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_5a
add-int/lit8 v3, v3, 0x1
goto :goto_38
:cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v6, :cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_96
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Added Fragments:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_72
if-ge v3, v0, :cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_72
:cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
if-eqz v6, :cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_cf
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Fragments Created Menus:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_ab
if-ge v3, v0, :cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_ab
:cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v6, :cond_10b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_10b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Back Stack:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_e4
if-ge v3, v0, :cond_10b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_e4
:cond_10b
monitor-enter p0
:try_start_10c
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_141
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Back Stack Indices:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_121
if-ge v3, v0, :cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
add-int/lit8 v3, v3, 0x1
goto :goto_121
:cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_162
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-lez v6, :cond_162
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "mAvailBackStackIndices: "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v6
invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_162
monitor-exit p0
:try_end_163
.catchall {:try_start_10c .. :try_end_163} :catchall_198
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-eqz v6, :cond_19b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_19b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Pending Actions:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_178
if-ge v3, v0, :cond_19b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Runnable;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
add-int/lit8 v3, v3, 0x1
goto :goto_178
:catchall_198
move-exception v6
:try_start_199
monitor-exit p0
:try_end_19a
.catchall {:try_start_199 .. :try_end_19a} :catchall_198
throw v6
:cond_19b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "FragmentManager misc state:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mHost="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mContainer="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v6, :cond_1ce
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mParent="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_1ce
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mCurState="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, " mStateSaved="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Z)V
const-string v6, " mDestroyed="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
if-eqz v6, :cond_200
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mNeedMenuInvalidate="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
:cond_200
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
if-eqz v6, :cond_211
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mNoTransactionsBecause="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_211
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_232
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-lez v6, :cond_232
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mAvailIndices: "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v6
invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_232
return-void
.end method
.method public enqueueAction(Ljava/lang/Runnable;Z)V
.registers 5
if-nez p2, :cond_5
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
:cond_5
monitor-enter p0
:try_start_6
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-nez v0, :cond_19
:cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Activity has been destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_16
move-exception v0
monitor-exit p0
:try_end_18
.catchall {:try_start_6 .. :try_end_18} :catchall_16
throw v0
:cond_19
:try_start_19
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-nez v0, :cond_24
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_48
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_48
monitor-exit p0
:try_end_49
.catchall {:try_start_19 .. :try_end_49} :catchall_16
return-void
.end method
.method public execPendingActions()Z
.registers 9
const/4 v7, 0x0
iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
if-eqz v5, :cond_d
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Recursive entry to executePendingTransactions"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_d
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v6
invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v6
if-eq v5, v6, :cond_25
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Must be called from main thread of process"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_25
const/4 v0, 0x0
:goto_26
monitor-enter p0
:try_start_27
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-eqz v5, :cond_33
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-nez v5, :cond_5a
:cond_33
monitor-exit p0
:try_end_34
.catchall {:try_start_27 .. :try_end_34} :catchall_9a
iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
if-eqz v5, :cond_a8
const/4 v3, 0x0
const/4 v2, 0x0
:goto_3a
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v2, v5, :cond_a1
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_57
iget-object v5, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v5, :cond_57
iget-object v5, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v5
or-int/2addr v3, v5
:cond_57
add-int/lit8 v2, v2, 0x1
goto :goto_3a
:try_start_5a
:cond_5a
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
if-eqz v5, :cond_69
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
array-length v5, v5
if-ge v5, v4, :cond_6d
:cond_69
new-array v5, v4, [Ljava/lang/Runnable;
iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
:cond_6d
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
monitor-exit p0
:try_end_85
.catchall {:try_start_5a .. :try_end_85} :catchall_9a
const/4 v5, 0x1
iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v2, 0x0
:goto_89
if-ge v2, v4, :cond_9d
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
aget-object v5, v5, v2
invoke-interface {v5}, Ljava/lang/Runnable;->run()V
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;
const/4 v6, 0x0
aput-object v6, v5, v2
add-int/lit8 v2, v2, 0x1
goto :goto_89
:catchall_9a
move-exception v5
:try_start_9b
monitor-exit p0
:try_end_9c
.catchall {:try_start_9b .. :try_end_9c} :catchall_9a
throw v5
:cond_9d
iput-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x1
goto :goto_26
:cond_a1
if-nez v3, :cond_a8
iput-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
:cond_a8
return v0
.end method
.method public executePendingTransactions()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
move-result v0
return v0
.end method
.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_c
if-ltz v1, :cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1d
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-ne v2, p1, :cond_1d
:goto_1c
:cond_1c
return-object v0
:cond_1d
add-int/lit8 v1, v1, -0x1
goto :goto_c
:cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_3f
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_2c
if-ltz v1, :cond_3f
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_3c
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eq v2, p1, :cond_1c
:cond_3c
add-int/lit8 v1, v1, -0x1
goto :goto_2c
:cond_3f
const/4 v0, 0x0
goto :goto_1c
.end method
.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_26
if-eqz p1, :cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_23
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
:goto_22
:cond_22
return-object v0
:cond_23
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_4b
if-eqz p1, :cond_4b
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_34
if-ltz v1, :cond_4b
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_48
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_22
:cond_48
add-int/lit8 v1, v1, -0x1
goto :goto_34
:cond_4b
const/4 v0, 0x0
goto :goto_22
.end method
.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_24
if-eqz p1, :cond_24
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_24
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_21
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_21
:goto_20
return-object v0
:cond_21
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_24
const/4 v0, 0x0
goto :goto_20
.end method
.method public freeBackStackIndex(I)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-nez v0, :cond_12
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
:cond_12
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_2e
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Freeing back stack index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
return-void
:catchall_39
move-exception v0
monitor-exit p0
:try_end_3b
.catchall {:try_start_1 .. :try_end_3b} :catchall_39
throw v0
.end method
.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;
return-object v0
.end method
.method public getBackStackEntryCount()I
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 8
const/4 v2, -0x1
invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
if-ne v1, v2, :cond_9
const/4 v0, 0x0
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v1, v2, :cond_36
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment no longer exists for key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_36
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-nez v0, :cond_8
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment no longer exists for key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
goto :goto_8
.end method
.method public getFragments()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
return-object v0
.end method
.method  getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
.registers 1
return-object p0
.end method
.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
.registers 9
const/4 v4, 0x1
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_1d
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "hide: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_50
iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_3f
const/4 v1, 0x0
invoke-virtual {p0, p1, p2, v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_38
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_38
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_3f
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v1, :cond_4d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_4d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_4d
iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_4d
invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
:cond_50
return-void
.end method
.method public isDestroyed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
return v0
.end method
.method  loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
.registers 14
const v8, 0x3f79999a
const/4 v3, 0x0
const/4 v7, 0x0
const/high16 v6, 0x3f80
iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
invoke-virtual {p1, p2, p3, v4}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_10
:goto_f
return-object v1
:cond_10
iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
if-eqz v4, :cond_24
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
iget v5, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_24
move-object v1, v0
goto :goto_f
:cond_24
if-nez p2, :cond_28
move-object v1, v3
goto :goto_f
:cond_28
invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I
move-result v2
if-gez v2, :cond_30
move-object v1, v3
goto :goto_f
:cond_30
packed-switch v2, :pswitch_data_90
if-nez p4, :cond_43
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z
move-result v4
if-eqz v4, :cond_43
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I
move-result p4
:cond_43
if-nez p4, :cond_8e
move-object v1, v3
goto :goto_f
:pswitch_47
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
const/high16 v4, 0x3f90
invoke-static {v3, v4, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:pswitch_54
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v6, v8, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:pswitch_5f
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v8, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:pswitch_6a
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
const v4, 0x3f89999a
invoke-static {v3, v6, v4, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:pswitch_78
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:pswitch_83
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_f
:cond_8e
move-object v1, v3
goto :goto_f
:pswitch_data_90
.packed-switch 0x1
:pswitch_47
:pswitch_54
:pswitch_5f
:pswitch_6a
:pswitch_78
:pswitch_83
.end packed-switch
.end method
.method  makeActive(Landroid/support/v4/app/Fragment;)V
.registers 5
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_49
:cond_11
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v0, :cond_1c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
:cond_1c
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_2c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_4
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Allocated fragment index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_4
:cond_49
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_2c
.end method
.method  makeInactive(Landroid/support/v4/app/Fragment;)V
.registers 5
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v0, :cond_5
:goto_4
return-void
:cond_5
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_21
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Freeing fragment index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-nez v0, :cond_34
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
:cond_34
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V
goto :goto_4
.end method
.method  moveToState(IIIZ)V
.registers 13
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-nez v0, :cond_f
if-eqz p1, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "No host"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
if-nez p4, :cond_16
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-ne v0, p1, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v0, :cond_15
const/4 v7, 0x0
const/4 v6, 0x0
:goto_1e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v6, v0, :cond_45
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_42
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v0, :cond_42
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v0
or-int/2addr v7, v0
:cond_42
add-int/lit8 v6, v6, 0x1
goto :goto_1e
:cond_45
if-nez v7, :cond_4a
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
:cond_4a
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v0, :cond_15
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v2, 0x5
if-ne v0, v2, :cond_15
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V
iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
goto :goto_15
.end method
.method  moveToState(IZ)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V
return-void
.end method
.method  moveToState(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
return-void
.end method
.method  moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
.registers 17
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_8
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v0, :cond_c
:cond_8
const/4 v0, 0x1
if-le p2, v0, :cond_c
const/4 p2, 0x1
:cond_c
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v0, :cond_16
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-le p2, v0, :cond_16
iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I
:cond_16
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v0, :cond_23
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
const/4 v1, 0x4
if-ge v0, v1, :cond_23
const/4 v0, 0x3
if-le p2, v0, :cond_23
const/4 p2, 0x3
:cond_23
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-ge v0, p2, :cond_289
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_30
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-nez v0, :cond_30
:goto_2f
return-void
:cond_30
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_41
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_41
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v0, :pswitch_data_3f4
:cond_46
:goto_46
iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I
goto :goto_2f
:pswitch_49
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_65
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "moveto CREATED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_65
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v0, :cond_b1
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:view_state"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:target_state"
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_9b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:target_req_state"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
:cond_9b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:user_visible_hint"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v0, :cond_b1
const/4 v0, 0x1
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
const/4 v0, 0x3
if-le p2, v0, :cond_b1
const/4 p2, 0x3
:cond_b1
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_f2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
:goto_c1
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_f9
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onAttach()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
move-result-object v0
goto :goto_c1
:cond_f9
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
if-nez v0, :cond_102
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
:cond_102
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_10b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V
:cond_10b
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_147
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_276
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_26c
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V
:goto_135
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v0, :cond_140
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_140
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
:goto_147
:cond_147
:pswitch_147
const/4 v0, 0x1
if-le p2, v0, :cond_21d
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_166
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "moveto ACTIVITY_CREATED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_166
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-nez v0, :cond_20c
const/4 v7, 0x0
iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v0, :cond_1be
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/view/ViewGroup;
if-nez v7, :cond_1be
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRestored:Z
if-nez v0, :cond_1be
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No view found for id 0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") for fragment "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_1be
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_285
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_27b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V
:goto_1e2
if-eqz v7, :cond_1fa
const/4 v0, 0x1
invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v6
if-eqz v6, :cond_1f5
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1f5
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_1fa
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v0, :cond_205
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_205
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
:goto_20c
:cond_20c
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_21a
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V
:cond_21a
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_21d
:pswitch_21d
const/4 v0, 0x3
if-le p2, v0, :cond_23f
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_23c
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "moveto STARTED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_23c
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V
:cond_23f
:pswitch_23f
const/4 v0, 0x4
if-le p2, v0, :cond_46
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_25e
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "moveto RESUMED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_25e
const/4 v0, 0x1
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
goto/16 :goto_46
:cond_26c
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_135
:cond_276
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_147
:cond_27b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_1e2
:cond_285
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto :goto_20c
:cond_289
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-le v0, p2, :cond_46
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v0, :pswitch_data_402
goto/16 :goto_46
:goto_294
:pswitch_294
:cond_294
const/4 v0, 0x1
if-ge p2, v0, :cond_46
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-eqz v0, :cond_2a7
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_2a7
iget-object v9, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V
:cond_2a7
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_38e
iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
const/4 p2, 0x1
goto/16 :goto_46
:pswitch_2b0
const/4 v0, 0x5
if-ge p2, v0, :cond_2d5
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_2cf
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "movefrom RESUMED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2cf
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z
:pswitch_2d5
:cond_2d5
const/4 v0, 0x4
if-ge p2, v0, :cond_2f7
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_2f4
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "movefrom STARTED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f4
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V
:cond_2f7
:pswitch_2f7
const/4 v0, 0x3
if-ge p2, v0, :cond_319
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_316
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "movefrom STOPPED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_316
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V
:cond_319
:pswitch_319
const/4 v0, 0x2
if-ge p2, v0, :cond_294
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_338
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "movefrom ACTIVITY_CREATED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_338
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_34b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
move-result v0
if-eqz v0, :cond_34b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-nez v0, :cond_34b
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
:cond_34b
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_383
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_383
const/4 v6, 0x0
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-lez v0, :cond_364
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-nez v0, :cond_364
const/4 v0, 0x0
invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v6
:cond_364
if-eqz v6, :cond_37c
move-object v8, p1
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
iget-object v10, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$5;
invoke-direct {v0, p0, v10, v6, v8}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_37c
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_383
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_294
:cond_38e
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_3aa
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "movefrom CREATED: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3aa
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_3b1
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V
:cond_3b1
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_3da
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onDetach()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3da
if-nez p5, :cond_46
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_3e5
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_46
:cond_3e5
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
goto/16 :goto_46
nop
:pswitch_data_3f4
.packed-switch 0x0
:pswitch_49
:pswitch_147
:pswitch_21d
:pswitch_21d
:pswitch_23f
.end packed-switch
:pswitch_data_402
.packed-switch 0x1
:pswitch_294
:pswitch_319
:pswitch_2f7
:pswitch_2d5
:pswitch_2b0
.end packed-switch
.end method
.method public noteStateNotSaved()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
return-void
.end method
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 16
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v5, -0x1
const/4 v2, 0x1
const-string v4, "fragment"
invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_d
:cond_c
:goto_c
return-object v0
:cond_d
const-string v4, "class"
invoke-interface {p4, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
sget-object v4, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I
invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v6
if-nez v8, :cond_1f
invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v8
:cond_1f
invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v9
const/4 v4, 0x2
invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_c
if-eqz p1, :cond_64
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v7
:goto_3d
if-ne v7, v5, :cond_66
if-ne v9, v5, :cond_66
if-nez v10, :cond_66
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_64
move v7, v3
goto :goto_3d
:cond_66
if-eq v9, v5, :cond_108
invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:goto_6c
if-nez v1, :cond_74
if-eqz v10, :cond_74
invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_74
if-nez v1, :cond_7c
if-eq v7, v5, :cond_7c
invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_7c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_b0
const-string v0, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "onCreateView: id=0x"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " fname="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " existing="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b0
if-nez v1, :cond_10d
invoke-static {p3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v9, :cond_10b
move v0, v9
:goto_bb
iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I
iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:cond_d7
:goto_d7
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-ge v0, v2, :cond_16b
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_16b
move-object v0, p0
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:goto_e5
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v0, :cond_170
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " did not create a view."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_108
move-object v1, v0
goto/16 :goto_6c
:cond_10b
move v0, v7
goto :goto_bb
:cond_10d
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-eqz v0, :cond_158
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": Duplicate id 0x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", tag "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", or parent id 0x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with another fragment for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_158
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_d7
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
goto/16 :goto_d7
:cond_16b
invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_e5
:cond_170
if-eqz v9, :cond_177
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V
:cond_177
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_184
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_184
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_c
.end method
.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
if-eqz v0, :cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
:cond_c
:goto_c
return-void
:cond_d
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
goto :goto_c
.end method
.method public popBackStack()V
.registers 3
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V
return-void
.end method
.method public popBackStack(II)V
.registers 6
if-gez p1, :cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad id: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;
invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V
return-void
.end method
.method public popBackStack(Ljava/lang/String;I)V
.registers 5
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;
invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V
return-void
.end method
.method public popBackStackImmediate()Z
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x0
const/4 v2, -0x1
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public popBackStackImmediate(II)Z
.registers 6
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z
if-gez p1, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad id: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public popBackStackImmediate(Ljava/lang/String;I)Z
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method  popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
.registers 17
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-nez v9, :cond_6
const/4 v9, 0x0
:goto_5
return v9
:cond_6
if-nez p2, :cond_39
if-gez p3, :cond_39
and-int/lit8 v9, p4, 0x1
if-nez v9, :cond_39
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v5, v9, -0x1
if-gez v5, :cond_1a
const/4 v9, 0x0
goto :goto_5
:cond_1a
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
new-instance v6, Landroid/util/SparseArray;
invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V
invoke-virtual {v1, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
const/4 v9, 0x1
const/4 v10, 0x0
invoke-virtual {v1, v9, v10, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V
:goto_37
const/4 v9, 0x1
goto :goto_5
:cond_39
const/4 v4, -0x1
if-nez p2, :cond_3e
if-ltz p3, :cond_8e
:cond_3e
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v4, v9, -0x1
:goto_46
if-ltz v4, :cond_5c
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
if-eqz p2, :cond_60
invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_60
:cond_5c
if-gez v4, :cond_69
const/4 v9, 0x0
goto :goto_5
:cond_60
if-ltz p3, :cond_66
iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-eq p3, v9, :cond_5c
:cond_66
add-int/lit8 v4, v4, -0x1
goto :goto_46
:cond_69
and-int/lit8 v9, p4, 0x1
if-eqz v9, :cond_8e
add-int/lit8 v4, v4, -0x1
:goto_6f
if-ltz v4, :cond_8e
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
if-eqz p2, :cond_85
invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_8b
:cond_85
if-ltz p3, :cond_8e
iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ne p3, v9, :cond_8e
:cond_8b
add-int/lit8 v4, v4, -0x1
goto :goto_6f
:cond_8e
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v9, v9, -0x1
if-ne v4, v9, :cond_9b
const/4 v9, 0x0
goto/16 :goto_5
:cond_9b
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v3, v9, -0x1
:goto_a8
if-le v3, v4, :cond_b6
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, -0x1
goto :goto_a8
:cond_b6
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v0, v9, -0x1
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
new-instance v6, Landroid/util/SparseArray;
invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V
const/4 v3, 0x0
:goto_c7
if-gt v3, v0, :cond_d5
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/BackStackRecord;
invoke-virtual {v9, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
add-int/lit8 v3, v3, 0x1
goto :goto_c7
:cond_d5
const/4 v7, 0x0
const/4 v3, 0x0
:goto_d7
if-gt v3, v0, :cond_10b
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_f9
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Popping back stack state: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_f9
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/BackStackRecord;
if-ne v3, v0, :cond_109
const/4 v10, 0x1
:goto_102
invoke-virtual {v9, v10, v7, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
move-result-object v7
add-int/lit8 v3, v3, 0x1
goto :goto_d7
:cond_109
const/4 v10, 0x0
goto :goto_102
:cond_10b
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V
goto/16 :goto_37
.end method
.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
.registers 7
iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not currently in the FragmentManager"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_25
iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
.registers 11
const/4 v0, 0x1
const/4 v5, 0x0
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_2a
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "remove: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " nesting="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z
move-result v1
if-nez v1, :cond_59
move v6, v0
:goto_31
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v1, :cond_37
if-eqz v6, :cond_58
:cond_37
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v1, :cond_40
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_40
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_4a
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_4a
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_4a
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v6, :cond_5b
move v2, v5
:goto_51
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_58
return-void
:cond_59
move v6, v5
goto :goto_31
:cond_5b
move v2, v0
goto :goto_51
.end method
.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_9
return-void
.end method
.method  reportBackStackChanged()V
.registers 3
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-eqz v1, :cond_1b
const/4 v0, 0x0
:goto_5
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v0, v1, :cond_1b
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1b
return-void
.end method
.method  restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
.registers 15
const/4 v11, 0x0
const/4 v10, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
move-object v2, p1
check-cast v2, Landroid/support/v4/app/FragmentManagerState;
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
if-eqz v7, :cond_4
if-eqz p2, :cond_6d
const/4 v4, 0x0
:goto_f
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v7
if-ge v4, v7, :cond_6d
invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_37
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "restoreAllState: re-attaching retained "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_37
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
iget v8, v1, Landroid/support/v4/app/Fragment;->mIndex:I
aget-object v3, v7, v8
iput-object v1, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iput-object v10, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iput v11, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v7, :cond_6a
iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v8
invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v8, "android:view_state"
invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v7
iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_6a
add-int/lit8 v4, v4, 0x1
goto :goto_f
:cond_6d
new-instance v7, Ljava/util/ArrayList;
iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
array-length v8, v8
invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V
iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v7, :cond_80
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
:cond_80
const/4 v4, 0x0
:goto_81
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
array-length v7, v7
if-ge v4, v7, :cond_fa
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
aget-object v3, v7, v4
if-eqz v3, :cond_c4
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
move-result-object v1
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_ba
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "restoreAllState: active #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ": "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ba
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-object v10, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
:goto_c1
add-int/lit8 v4, v4, 0x1
goto :goto_81
:cond_c4
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-nez v7, :cond_d4
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
:cond_d4
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_f0
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "restoreAllState: avail #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_f0
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_c1
:cond_fa
if-eqz p2, :cond_14d
const/4 v4, 0x0
:goto_fd
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v7
if-ge v4, v7, :cond_14d
invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I
if-ltz v7, :cond_123
iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I
iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
if-ge v7, v8, :cond_126
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v8, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/support/v4/app/Fragment;
iput-object v7, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
:goto_123
:cond_123
add-int/lit8 v4, v4, 0x1
goto :goto_fd
:cond_126
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Re-attaching retained fragment "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " target no longer exists: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
goto :goto_123
:cond_14d
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
if-eqz v7, :cond_1cf
new-instance v7, Ljava/util/ArrayList;
iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
array-length v8, v8
invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V
iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
const/4 v4, 0x0
:goto_15c
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
array-length v7, v7
if-ge v4, v7, :cond_1d1
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
aget v8, v8, v4
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-nez v1, :cond_18e
new-instance v7, Ljava/lang/IllegalStateException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "No instantiated fragment for index #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
aget v9, v9, v4
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_18e
const/4 v7, 0x1
iput-boolean v7, v1, Landroid/support/v4/app/Fragment;->mAdded:Z
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_1b7
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "restoreAllState: added #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ": "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1b7
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_1c7
new-instance v7, Ljava/lang/IllegalStateException;
const-string v8, "Already added!"
invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v7
:cond_1c7
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_15c
:cond_1cf
iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_1d1
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
if-eqz v7, :cond_241
new-instance v7, Ljava/util/ArrayList;
iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
array-length v8, v8
invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V
iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
const/4 v4, 0x0
:goto_1e0
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
array-length v7, v7
if-ge v4, v7, :cond_4
iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
aget-object v7, v7, v4
invoke-virtual {v7, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
move-result-object v0
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_230
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "restoreAllState: back stack #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " (index "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "): "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v5, Landroid/support/v4/util/LogWriter;
const-string v7, "FragmentManager"
invoke-direct {v5, v7}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v6, Ljava/io/PrintWriter;
invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v7, "  "
invoke-virtual {v0, v7, v6, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
:cond_230
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v7, :cond_23e
iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {p0, v7, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
:cond_23e
add-int/lit8 v4, v4, 0x1
goto :goto_1e0
:cond_241
iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
goto/16 :goto_4
.end method
.method  retainNonConfig()Ljava/util/ArrayList;
.registers 7
const/4 v1, 0x0
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v3, :cond_54
const/4 v2, 0x0
:goto_6
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v2, v3, :cond_54
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_4f
iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
if-eqz v3, :cond_4f
if-nez v1, :cond_23
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:cond_23
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v3, 0x1
iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_52
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I
:goto_31
iput v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_4f
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "retainNonConfig: keeping retained "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4f
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_52
const/4 v3, -0x1
goto :goto_31
:cond_54
return-object v1
.end method
.method  saveAllState()Landroid/os/Parcelable;
.registers 13
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z
if-eqz v9, :cond_b
const/4 v9, 0x1
iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
:cond_b
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v9, :cond_17
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
if-gtz v9, :cond_18
:cond_17
:goto_17
return-object v5
:cond_18
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v1, v0, [Landroid/support/v4/app/FragmentState;
const/4 v7, 0x0
const/4 v8, 0x0
:goto_22
if-ge v8, v0, :cond_f2
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
if-eqz v4, :cond_e9
iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v9, :cond_59
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: active "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has cleared index: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_59
const/4 v7, 0x1
new-instance v6, Landroid/support/v4/app/FragmentState;
invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V
aput-object v6, v1, v8
iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I
if-lez v9, :cond_ed
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-nez v9, :cond_ed
invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v9
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v9, :cond_c1
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v9, :cond_a0
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has target not in fragment manager: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_a0
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-nez v9, :cond_ab
new-instance v9, Landroid/os/Bundle;
invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
:cond_ab
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v10, "android:target_state"
iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
if-eqz v9, :cond_c1
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v10, "android:target_req_state"
iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_c1
:cond_c1
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_e9
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Saved state of "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_e9
add-int/lit8 v8, v8, 0x1
goto/16 :goto_22
:cond_ed
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
goto :goto_c1
:cond_f2
if-nez v7, :cond_101
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_17
const-string v9, "FragmentManager"
const-string v10, "saveAllState: no fragments!"
invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_17
:cond_101
const/4 v2, 0x0
const/4 v3, 0x0
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v9, :cond_180
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_180
new-array v2, v0, [I
const/4 v8, 0x0
:goto_112
if-ge v8, v0, :cond_180
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/Fragment;
iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I
aput v9, v2, v8
aget v9, v2, v8
if-gez v9, :cond_151
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: active "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has cleared index: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
aget v11, v2, v8
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_151
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_17d
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "saveAllState: adding fragment #"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_17d
add-int/lit8 v8, v8, 0x1
goto :goto_112
:cond_180
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v9, :cond_1cf
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_1cf
new-array v3, v0, [Landroid/support/v4/app/BackStackState;
const/4 v8, 0x0
:goto_18f
if-ge v8, v0, :cond_1cf
new-instance v10, Landroid/support/v4/app/BackStackState;
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/BackStackRecord;
invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V
aput-object v10, v3, v8
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_1cc
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "saveAllState: adding back stack #"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1cc
add-int/lit8 v8, v8, 0x1
goto :goto_18f
:cond_1cf
new-instance v5, Landroid/support/v4/app/FragmentManagerState;
invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V
iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
goto/16 :goto_17
.end method
.method  saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
if-nez v1, :cond_c
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
:cond_c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z
move-result v1
if-nez v1, :cond_1e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
:cond_1e
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_25
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
:cond_25
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-eqz v1, :cond_37
if-nez v0, :cond_30
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_30
const-string v1, "android:view_state"
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_37
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v1, :cond_49
if-nez v0, :cond_42
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_42
const-string v1, "android:user_visible_hint"
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_49
return-object v0
.end method
.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
.registers 7
const/4 v1, 0x0
iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v2, :cond_26
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " is not currently in the FragmentManager"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_26
iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I
if-lez v2, :cond_35
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_35
new-instance v1, Landroid/support/v4/app/Fragment$SavedState;
invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V
:cond_35
return-object v1
.end method
.method  saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
.registers 4
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
if-nez v0, :cond_27
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
:goto_10
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lez v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
goto :goto_4
:cond_27
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
goto :goto_10
.end method
.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-nez v1, :cond_c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
:cond_c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_41
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_3a
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Setting back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3a
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_3f
monitor-exit p0
return-void
:goto_41
:cond_41
if-ge v0, p1, :cond_7c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-nez v1, :cond_54
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
:cond_54
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_70
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Adding available back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_41
:cond_7c
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_a2
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Adding back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a2
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3f
:catchall_a8
move-exception v1
monitor-exit p0
:try_end_aa
.catchall {:try_start_1 .. :try_end_aa} :catchall_a8
throw v1
.end method
.method public showFragment(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_1e
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "show: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v1, :cond_4e
iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_3d
invoke-virtual {p0, p1, p2, v5, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_38
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_38
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
:cond_3d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v1, :cond_4b
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_4b
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_4b
iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_4b
invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
:cond_4e
return-void
.end method
.method  startPendingDeferredFragments()V
.registers 4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
const/4 v1, 0x0
:goto_6
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1b
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
:cond_1b
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "FragmentManager{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_2f
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
:goto_25
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_2f
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto :goto_25
.end method