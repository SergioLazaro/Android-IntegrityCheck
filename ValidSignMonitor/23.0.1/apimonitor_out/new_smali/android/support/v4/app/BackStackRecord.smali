.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;
.field static final OP_ADD:I = 0x1
.field static final OP_ATTACH:I = 0x7
.field static final OP_DETACH:I = 0x6
.field static final OP_HIDE:I = 0x4
.field static final OP_NULL:I = 0x0
.field static final OP_REMOVE:I = 0x3
.field static final OP_REPLACE:I = 0x2
.field static final OP_SHOW:I = 0x5
.field static final SUPPORTS_TRANSITIONS:Z = false
.field static final TAG:Ljava/lang/String; = "FragmentManager"
.field  mAddToBackStack:Z
.field  mAllowAddToBackStack:Z
.field  mBreadCrumbShortTitleRes:I
.field  mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
.field  mBreadCrumbTitleRes:I
.field  mBreadCrumbTitleText:Ljava/lang/CharSequence;
.field  mCommitted:Z
.field  mEnterAnim:I
.field  mExitAnim:I
.field  mHead:Landroid/support/v4/app/BackStackRecord$Op;
.field  mIndex:I
.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;
.field  mName:Ljava/lang/String;
.field  mNumOp:I
.field  mPopEnterAnim:I
.field  mPopExitAnim:I
.field  mSharedElementSourceNames:Ljava/util/ArrayList;
.field  mSharedElementTargetNames:Ljava/util/ArrayList;
.field  mTail:Landroid/support/v4/app/BackStackRecord$Op;
.field  mTransition:I
.field  mTransitionStyle:I
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_a
const/4 v0, 0x1
:goto_7
sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
return-void
:cond_a
const/4 v0, 0x0
goto :goto_7
.end method
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/app/BackStackRecord;->setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
return-void
.end method
.method static synthetic access$200(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
.registers 6
invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/BackStackRecord;->callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
return-void
.end method
.method static synthetic access$300(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
return-void
.end method
.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
.registers 12
new-instance v2, Landroid/support/v4/app/BackStackRecord$TransitionState;
invoke-direct {v2, p0}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V
new-instance v0, Landroid/view/View;
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;
const/4 v6, 0x0
const/4 v7, 0x0
:goto_16
invoke-virtual {p1}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v7, v0, :cond_2e
invoke-virtual {p1, v7}, Landroid/util/SparseArray;->keyAt(I)I
move-result v1
move-object v0, p0
move v3, p3
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
move-result v0
if-eqz v0, :cond_2b
const/4 v6, 0x1
:cond_2b
add-int/lit8 v7, v7, 0x1
goto :goto_16
:cond_2e
const/4 v7, 0x0
:goto_2f
invoke-virtual {p2}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v7, v0, :cond_4d
invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I
move-result v1
invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_4a
move-object v0, p0
move v3, p3
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
move-result v0
if-eqz v0, :cond_4a
const/4 v6, 0x1
:cond_4a
add-int/lit8 v7, v7, 0x1
goto :goto_2f
:cond_4d
if-nez v6, :cond_50
const/4 v2, 0x0
:cond_50
return-object v2
.end method
.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
.registers 9
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z
move-result v4
if-nez v4, :cond_b
:cond_a
return-void
:cond_b
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_d
if-eqz v3, :cond_a
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v4, :pswitch_data_6e
:goto_14
iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_d
:pswitch_17
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_1d
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v4, :cond_4c
const/4 v1, 0x0
:goto_26
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_4c
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_42
iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I
iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v4, v5, :cond_45
:cond_42
if-ne v2, v0, :cond_48
const/4 v0, 0x0
:goto_45
:cond_45
add-int/lit8 v1, v1, 0x1
goto :goto_26
:cond_48
invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_45
:cond_4c
invoke-direct {p0, p2, v0}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_50
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_56
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_5c
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_62
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_68
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_data_6e
.packed-switch 0x1
:pswitch_17
:pswitch_1d
:pswitch_50
:pswitch_56
:pswitch_5c
:pswitch_62
:pswitch_68
.end packed-switch
.end method
.method private callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
.registers 10
if-eqz p4, :cond_1d
iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
:goto_4
if-eqz v1, :cond_1c
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v2, Ljava/util/ArrayList;
invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;
move-result-object v3
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
const/4 v3, 0x0
invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
:cond_1c
return-void
:cond_1d
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
goto :goto_4
.end method
.method private static captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
.registers 6
if-eqz p0, :cond_a
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v0
invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
move-result-object p0
:cond_a
return-object p0
.end method
.method private configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.registers 44
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
move/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/view/ViewGroup;
if-nez v6, :cond_12
const/4 v4, 0x0
:goto_11
return v4
:cond_12
move-object/from16 v0, p5
move/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/support/v4/app/Fragment;
move-object/from16 v0, p4
move/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/Fragment;
move/from16 v0, p3
invoke-static {v8, v0}, Landroid/support/v4/app/BackStackRecord;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v12
move/from16 v0, p3
invoke-static {v8, v9, v0}, Landroid/support/v4/app/BackStackRecord;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v7
move/from16 v0, p3
invoke-static {v9, v0}, Landroid/support/v4/app/BackStackRecord;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v26
const/16 v20, 0x0
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
if-eqz v7, :cond_54
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p3
invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/BackStackRecord;->remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v4
if-eqz v4, :cond_5c
const/4 v7, 0x0
const/16 v20, 0x0
:goto_54
:cond_54
if-nez v12, :cond_93
if-nez v7, :cond_93
if-nez v26, :cond_93
const/4 v4, 0x0
goto :goto_11
:cond_5c
if-eqz p3, :cond_8e
iget-object v0, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
move-object/from16 v34, v0
:goto_62
if-eqz v34, :cond_84
new-instance v36, Ljava/util/ArrayList;
invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v4
move-object/from16 v0, v36
invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v37, Ljava/util/ArrayList;
invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;
move-result-object v4
move-object/from16 v0, v37
invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
const/4 v4, 0x0
move-object/from16 v0, v34
move-object/from16 v1, v36
move-object/from16 v2, v37
invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
:cond_84
move-object/from16 v4, p0
move-object/from16 v5, p2
move/from16 v10, p3
invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
goto :goto_54
:cond_8e
iget-object v0, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
move-object/from16 v34, v0
goto :goto_62
:cond_93
new-instance v27, Ljava/util/ArrayList;
invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p2
iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;
move-object/from16 v0, v26
move-object/from16 v1, v27
move-object/from16 v2, v20
invoke-static {v0, v9, v1, v2, v4}, Landroid/support/v4/app/BackStackRecord;->captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
move-result-object v26
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
if-eqz v4, :cond_d1
if-eqz v20, :cond_d1
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
move-object/from16 v0, v20
invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v35
check-cast v35, Landroid/view/View;
if-eqz v35, :cond_d1
if-eqz v26, :cond_ca
move-object/from16 v0, v26
move-object/from16 v1, v35
invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
:cond_ca
if-eqz v7, :cond_d1
move-object/from16 v0, v35
invoke-static {v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
:cond_d1
new-instance v15, Landroid/support/v4/app/BackStackRecord$1;
move-object/from16 v0, p0
invoke-direct {v15, v0, v8}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V
new-instance v19, Ljava/util/ArrayList;
invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
new-instance v21, Landroid/support/v4/util/ArrayMap;
invoke-direct/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;-><init>()V
const/16 v33, 0x1
if-eqz v8, :cond_ec
if-eqz p3, :cond_154
invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z
move-result v33
:goto_ec
:cond_ec
move-object/from16 v0, v26
move/from16 v1, v33
invoke-static {v12, v0, v7, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
move-result-object v30
if-eqz v30, :cond_14f
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;
move-object/from16 v16, v0
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
move-object/from16 v17, v0
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
move-object/from16 v18, v0
move-object v13, v7
move-object v14, v6
move-object/from16 v22, v11
invoke-static/range {v12 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p1
move-object/from16 v3, v30
invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
move-object/from16 v0, p2
iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;
const/4 v5, 0x1
move-object/from16 v0, v30
invoke-static {v0, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p1
move-object/from16 v3, v30
invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
move-object/from16 v0, v30
invoke-static {v6, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;
move-object/from16 v23, v0
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;
move-object/from16 v31, v0
move-object/from16 v22, v6
move-object/from16 v24, v12
move-object/from16 v25, v19
move-object/from16 v28, v7
move-object/from16 v29, v11
move-object/from16 v32, v21
invoke-static/range {v22 .. v32}, Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
:cond_14f
if-eqz v30, :cond_159
const/4 v4, 0x1
goto/16 :goto_11
:cond_154
invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z
move-result v33
goto :goto_ec
:cond_159
const/4 v4, 0x0
goto/16 :goto_11
.end method
.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
.registers 9
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
if-eqz p3, :cond_43
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
if-eqz v1, :cond_41
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_41
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Can\'t change tag of fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " now "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_41
iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
:cond_43
if-eqz p1, :cond_80
iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eqz v1, :cond_7c
iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eq v1, p1, :cond_7c
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Can\'t change container ID of fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " now "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_7c
iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I
:cond_80
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-void
.end method
.method private excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_53
const/4 v1, 0x0
:goto_7
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_53
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v2, :cond_42
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v2, :cond_42
iget v2, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v2, p2, :cond_42
iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v2, :cond_45
iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_42
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v3, 0x1
invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_42
:goto_42
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_45
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v3, 0x0
invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_42
:cond_53
return-void
.end method
.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
.registers 12
invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v6
new-instance v0, Landroid/support/v4/app/BackStackRecord$3;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
return-void
.end method
.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
if-eqz p1, :cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;
move-result-object v0
:goto_a
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_3
:cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;
move-result-object v0
goto :goto_a
.end method
.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
if-eqz p1, :cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;
move-result-object v0
:goto_a
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_3
:cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;
move-result-object v0
goto :goto_a
.end method
.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 4
if-eqz p0, :cond_4
if-nez p1, :cond_6
:cond_4
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
if-eqz p2, :cond_11
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;
move-result-object v0
:goto_c
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_5
:cond_11
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method
.method private mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
.registers 8
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1c
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-eqz v2, :cond_1c
invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
if-eqz p3, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-static {v2, v3, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
move-result-object v0
:cond_1c
:goto_1c
return-object v0
:cond_1d
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z
goto :goto_1c
.end method
.method private mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
.registers 8
const/4 v3, 0x1
invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/BackStackRecord;->mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
move-result-object v0
if-eqz p2, :cond_16
iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
if-eqz v1, :cond_12
iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
:cond_12
invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
:goto_15
return-object v0
:cond_16
iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
if-eqz v1, :cond_21
iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
:cond_21
invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
goto :goto_15
.end method
.method private prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
.registers 18
invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v9
new-instance v0, Landroid/support/v4/app/BackStackRecord$2;
move-object v1, p0
move-object v2, p2
move-object v3, p3
move-object/from16 v4, p7
move-object v5, p1
move/from16 v6, p6
move-object v7, p4
move-object v8, p5
invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
return-void
.end method
.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
.registers 8
invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v4
if-eqz v4, :cond_7
:goto_6
return-object p2
:cond_7
new-instance v2, Landroid/support/v4/util/ArrayMap;
invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v0, 0x0
:goto_11
if-ge v0, v1, :cond_29
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p2, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
if-eqz v3, :cond_26
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_29
move-object p2, v2
goto :goto_6
.end method
.method private remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
.registers 8
const/4 v3, 0x0
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-eqz v1, :cond_18
invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
if-eqz p3, :cond_29
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z
:cond_18
:goto_18
if-eqz p3, :cond_32
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
if-eqz v1, :cond_25
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
:cond_25
invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
:goto_28
return-object v0
:cond_29
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
move-result-object v0
goto :goto_18
:cond_32
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
if-eqz v1, :cond_3d
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
:cond_3d
invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
goto :goto_28
.end method
.method private setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
.registers 11
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
if-nez v6, :cond_2e
const/4 v0, 0x0
:goto_5
const/4 v1, 0x0
:goto_6
if-ge v1, v0, :cond_3b
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
if-eqz v5, :cond_2b
invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v4
if-eqz p3, :cond_35
iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
invoke-static {v6, v3, v4}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
:goto_2b
:cond_2b
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_2e
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_5
:cond_35
iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
invoke-static {v6, v4, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_3b
return-void
.end method
.method private setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
.registers 6
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
if-eqz v1, :cond_1d
invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v1
if-nez v1, :cond_1d
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_1d
iget-object v1, p2, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
iput-object v0, v1, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;
:cond_1d
return-void
.end method
.method private static setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
.registers 4
if-eqz p1, :cond_21
iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v0, :cond_21
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z
move-result v1
if-nez v1, :cond_21
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z
move-result v1
if-eqz v1, :cond_21
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_21
invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_21
invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_21
return-void
.end method
.method private setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
.registers 4
if-eqz p2, :cond_9
iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v0, :cond_9
invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_9
return-void
.end method
.method private static setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_18
if-eqz p2, :cond_18
const/4 v0, 0x0
:goto_5
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v1
if-ge v0, v1, :cond_1c
invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
:goto_18
:cond_18
return-void
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1c
invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_18
.end method
.method private setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
.registers 9
invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v0
const/4 v1, 0x0
:goto_5
if-ge v1, v0, :cond_27
invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/view/View;
invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v3
if-eqz p3, :cond_21
iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
invoke-static {v4, v2, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
:goto_1e
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_21
iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
invoke-static {v4, v3, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1e
:cond_27
return-void
.end method
.method private static setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.registers 7
if-eqz p1, :cond_1d
const/4 v0, 0x0
:goto_3
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_1d
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;
invoke-static {v3, v1, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_1d
return-void
.end method
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method  addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
if-nez v0, :cond_1f
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_8
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
return-void
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_8
.end method
.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 6
sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
if-eqz v1, :cond_2e
invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_12
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Unique transitionNames are required for all sharedElements"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_12
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-nez v1, :cond_24
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
:cond_24
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2e
return-object p0
.end method
.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object p0
.end method
.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x7
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method  bumpBackStackNesting(I)V
.registers 8
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-nez v3, :cond_5
:cond_4
return-void
:cond_5
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_2b
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bump nesting in "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " by "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2b
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_2d
if-eqz v1, :cond_4
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_66
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/2addr v4, p1
iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_66
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bump nesting of "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " to "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_66
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v3, :cond_ac
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_72
if-ltz v0, :cond_ac
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/2addr v3, p1
iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_a9
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bump nesting of "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " to "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a9
add-int/lit8 v0, v0, -0x1
goto :goto_72
:cond_ac
iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto/16 :goto_2d
.end method
.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
.registers 6
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z
move-result v2
if-nez v2, :cond_b
:cond_a
return-void
:cond_b
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_d
if-eqz v1, :cond_a
iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v2, :pswitch_data_5e
:goto_14
iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_d
:pswitch_17
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_1d
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v2, :cond_39
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_29
if-ltz v0, :cond_39
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
add-int/lit8 v0, v0, -0x1
goto :goto_29
:cond_39
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_3f
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_45
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_4b
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_51
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
:pswitch_57
iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
goto :goto_14
nop
:pswitch_data_5e
.packed-switch 0x1
:pswitch_17
:pswitch_1d
:pswitch_3f
:pswitch_45
:pswitch_4b
:pswitch_51
:pswitch_57
.end packed-switch
.end method
.method public commit()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method public commitAllowingStateLoss()I
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method  commitInternal(Z)I
.registers 8
const/4 v5, 0x0
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
if-eqz v2, :cond_d
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "commit already called"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_d
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_3a
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Commit: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Landroid/support/v4/util/LogWriter;
const-string v2, "FragmentManager"
invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v2, "  "
invoke-virtual {p0, v2, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_3a
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v2, :cond_51
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
move-result v2
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:goto_49
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V
iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v2
:cond_51
const/4 v2, -0x1
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
goto :goto_49
.end method
.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x6
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This transaction is already being added to the back stack"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return-object p0
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
.registers 11
if-eqz p3, :cond_da
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mName="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mIndex="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v5, " mCommitted="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
if-eqz v5, :cond_46
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mTransition=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mTransitionStyle=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_46
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
if-nez v5, :cond_4e
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
if-eqz v5, :cond_6d
:cond_4e
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_6d
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
if-nez v5, :cond_75
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
if-eqz v5, :cond_94
:cond_75
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mPopEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mPopExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_94
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-nez v5, :cond_9c
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_b7
:cond_9c
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mBreadCrumbTitleRes=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mBreadCrumbTitleText="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_b7
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-nez v5, :cond_bf
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_da
:cond_bf
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mBreadCrumbShortTitleRes=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mBreadCrumbShortTitleText="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_da
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
if-eqz v5, :cond_1f5
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "Operations:"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "    "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
const/4 v3, 0x0
:goto_fc
if-eqz v4, :cond_1f5
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v5, :pswitch_data_1f6
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "cmd="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_118
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "  Op #"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p2, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v5, ": "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p2, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
if-eqz p3, :cond_185
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
if-nez v5, :cond_13f
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
if-eqz v5, :cond_15e
:cond_13f
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "enterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " exitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_15e
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
if-nez v5, :cond_166
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
if-eqz v5, :cond_185
:cond_166
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "popEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " popExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_185
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v5, :cond_1ef
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_1ef
const/4 v1, 0x0
:goto_192
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v1, v5, :cond_1ef
invoke-static {p2, v2}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_1d7
const-string v5, "Removed: "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
:goto_1ab
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_192
:pswitch_1b7
const-string v0, "NULL"
goto/16 :goto_118
:pswitch_1bb
const-string v0, "ADD"
goto/16 :goto_118
:pswitch_1bf
const-string v0, "REPLACE"
goto/16 :goto_118
:pswitch_1c3
const-string v0, "REMOVE"
goto/16 :goto_118
:pswitch_1c7
const-string v0, "HIDE"
goto/16 :goto_118
:pswitch_1cb
const-string v0, "SHOW"
goto/16 :goto_118
:pswitch_1cf
const-string v0, "DETACH"
goto/16 :goto_118
:pswitch_1d3
const-string v0, "ATTACH"
goto/16 :goto_118
:cond_1d7
if-nez v1, :cond_1de
const-string v5, "Removed:"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_1de
invoke-static {p2, v2}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "  #"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p2, v1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v5, ": "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
goto :goto_1ab
:cond_1ef
iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
add-int/lit8 v3, v3, 0x1
goto/16 :goto_fc
:cond_1f5
return-void
:pswitch_data_1f6
.packed-switch 0x0
:pswitch_1b7
:pswitch_1bb
:pswitch_1bf
:pswitch_1c3
:pswitch_1c7
:pswitch_1cb
:pswitch_1cf
:pswitch_1d3
.end packed-switch
.end method
.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
goto :goto_12
.end method
.method public getBreadCrumbShortTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
return v0
.end method
.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
goto :goto_12
.end method
.method public getBreadCrumbTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
return v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTransition()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return v0
.end method
.method public getTransitionStyle()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return v0
.end method
.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x4
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public isAddToBackStackAllowed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return v0
.end method
.method public isEmpty()Z
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
.registers 22
sget-boolean v13, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v13, :cond_33
const-string v13, "FragmentManager"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "popFromBackStack: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v5, Landroid/support/v4/util/LogWriter;
const-string v13, "FragmentManager"
invoke-direct {v5, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v10, Ljava/io/PrintWriter;
invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v13, "  "
const/4 v14, 0x0
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v13, v14, v10, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_33
sget-boolean v13, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
if-eqz v13, :cond_50
if-nez p2, :cond_88
invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I
move-result v13
if-nez v13, :cond_45
invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I
move-result v13
if-eqz v13, :cond_50
:cond_45
const/4 v13, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
invoke-direct {v0, v1, v2, v13}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
move-result-object p2
:goto_50
:cond_50
const/4 v13, -0x1
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
if-eqz p2, :cond_98
const/4 v12, 0x0
:goto_59
if-eqz p2, :cond_9d
const/4 v11, 0x0
:goto_5c
move-object/from16 v0, p0
iget-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
:goto_60
if-eqz v7, :cond_13b
if-eqz p2, :cond_a2
const/4 v8, 0x0
:goto_65
if-eqz p2, :cond_a5
const/4 v9, 0x0
:goto_68
iget v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v13, :pswitch_data_16c
new-instance v13, Ljava/lang/IllegalArgumentException;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Unknown cmd: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
iget v15, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v13
:cond_88
if-nez p1, :cond_50
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-static {v0, v13, v14}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
goto :goto_50
:cond_98
move-object/from16 v0, p0
iget v12, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
goto :goto_59
:cond_9d
move-object/from16 v0, p0
iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
goto :goto_5c
:cond_a2
iget v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
goto :goto_65
:cond_a5
iget v9, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
goto :goto_68
:pswitch_a8
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
:cond_b7
:goto_b7
iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_60
:pswitch_ba
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_cb
iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
:cond_cb
iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v13, :cond_b7
const/4 v4, 0x0
:goto_d0
iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v13
if-ge v4, v13, :cond_b7
iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v4/app/Fragment;
iput v8, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v14, 0x0
invoke-virtual {v13, v6, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
add-int/lit8 v4, v4, 0x1
goto :goto_d0
:pswitch_ed
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v14, 0x0
invoke-virtual {v13, v3, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
goto :goto_b7
:pswitch_fa
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_b7
:pswitch_10a
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_b7
:pswitch_11a
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_b7
:pswitch_12a
iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v14
invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_b7
:cond_13b
if-eqz p1, :cond_154
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v15
const/16 v16, 0x1
move/from16 v0, v16
invoke-virtual {v13, v14, v15, v12, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V
const/16 p2, 0x0
:cond_154
move-object/from16 v0, p0
iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v13, :cond_16a
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V
const/4 v13, -0x1
move-object/from16 v0, p0
iput v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:cond_16a
return-object p2
nop
:pswitch_data_16c
.packed-switch 0x1
:pswitch_a8
:pswitch_ba
:pswitch_ed
:pswitch_fa
:pswitch_10a
:pswitch_11a
:pswitch_12a
.end packed-switch
.end method
.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x3
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Must use non-zero containerViewId"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x2
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public run()V
.registers 16
sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v12, :cond_1c
const-string v12, "FragmentManager"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "Run: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v12, :cond_2c
iget v12, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-gez v12, :cond_2c
new-instance v12, Ljava/lang/IllegalStateException;
const-string v13, "addToBackStack() called after commit()"
invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v12
:cond_2c
const/4 v12, 0x1
invoke-virtual {p0, v12}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
const/4 v9, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
sget-boolean v12, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
if-eqz v12, :cond_49
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
new-instance v6, Landroid/util/SparseArray;
invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V
invoke-direct {p0, v4, v6}, Landroid/support/v4/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
const/4 v12, 0x0
invoke-direct {p0, v4, v6, v12}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
move-result-object v9
:cond_49
if-eqz v9, :cond_79
const/4 v11, 0x0
:goto_4c
if-eqz v9, :cond_7c
const/4 v10, 0x0
:goto_4f
iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_51
if-eqz v8, :cond_170
if-eqz v9, :cond_7f
const/4 v1, 0x0
:goto_56
if-eqz v9, :cond_82
const/4 v2, 0x0
:goto_59
iget v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v12, :pswitch_data_184
new-instance v12, Ljava/lang/IllegalArgumentException;
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "Unknown cmd: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
iget v14, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v12
:cond_79
iget v11, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
goto :goto_4c
:cond_7c
iget v10, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
goto :goto_4f
:cond_7f
iget v1, v8, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
goto :goto_56
:cond_82
iget v2, v8, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
goto :goto_59
:pswitch_85
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v13, 0x0
invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:cond_8f
:goto_8f
iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_51
:pswitch_92
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v0, v3, Landroid/support/v4/app/Fragment;->mContainerId:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v12, :cond_12d
const/4 v5, 0x0
:goto_9d
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v12
if-ge v5, v12, :cond_12d
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/support/v4/app/Fragment;
sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v12, :cond_d7
const-string v12, "FragmentManager"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "OP_REPLACE: adding="
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, " old="
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_d7
iget v12, v7, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v12, v0, :cond_e0
if-ne v7, v3, :cond_e3
const/4 v3, 0x0
iput-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
:cond_e0
:goto_e0
add-int/lit8 v5, v5, 0x1
goto :goto_9d
:cond_e3
iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-nez v12, :cond_ee
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
:cond_ee
iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput v2, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v12, :cond_127
iget v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/lit8 v12, v12, 0x1
iput v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v12, :cond_127
const-string v12, "FragmentManager"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "Bump nesting of "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, " to "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
iget v14, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_127
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v7, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_e0
:cond_12d
if-eqz v3, :cond_8f
iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v13, 0x0
invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
goto/16 :goto_8f
:pswitch_139
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_8f
:pswitch_144
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_8f
:pswitch_14f
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_8f
:pswitch_15a
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_8f
:pswitch_165
iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_8f
:cond_170
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v13, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v14, 0x1
invoke-virtual {v12, v13, v10, v11, v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V
iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v12, :cond_183
iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v12, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
:cond_183
return-void
:pswitch_data_184
.packed-switch 0x1
:pswitch_85
:pswitch_92
:pswitch_139
:pswitch_144
:pswitch_14f
:pswitch_15a
:pswitch_165
.end packed-switch
.end method
.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
.registers 5
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
return-object p0
.end method
.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return-object p0
.end method
.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return-object p0
.end method
.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x5
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "BackStackEntry{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v1, :cond_25
const-string v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_25
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
if-eqz v1, :cond_33
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method