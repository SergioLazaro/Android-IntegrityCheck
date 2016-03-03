.class  Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Ljava/util/ArrayList;Landroid/view/View;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
return-void
.end method
.method static synthetic access$100(Landroid/view/View;)Landroid/graphics/Rect;
.registers 2
invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
.registers 10
move-object v6, p0
check-cast v6, Landroid/transition/Transition;
instance-of v7, v6, Landroid/transition/TransitionSet;
if-eqz v7, :cond_1b
move-object v4, v6
check-cast v4, Landroid/transition/TransitionSet;
invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I
move-result v2
const/4 v1, 0x0
:goto_f
if-ge v1, v2, :cond_3e
invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_1b
invoke-static {v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z
move-result v7
if-nez v7, :cond_3e
invoke-virtual {v6}, Landroid/transition/Transition;->getTargets()Ljava/util/List;
move-result-object v5
invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z
move-result v7
if-eqz v7, :cond_3e
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v1, 0x0
:goto_30
if-ge v1, v3, :cond_3e
invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/view/View;
invoke-virtual {v6, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;
add-int/lit8 v1, v1, 0x1
goto :goto_30
:cond_3e
return-void
.end method
.method public static addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.registers 22
if-nez p0, :cond_4
if-eqz p1, :cond_31
:cond_4
move-object v4, p0
check-cast v4, Landroid/transition/Transition;
if-eqz v4, :cond_c
invoke-virtual {v4, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;
:cond_c
if-eqz p1, :cond_15
move-object/from16 v0, p8
move-object/from16 v1, p10
invoke-static {p1, p4, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
:cond_15
if-eqz p3, :cond_2c
invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v10
new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$2;
move-object v3, p2
move-object v5, p4
move-object v6, p3
move-object/from16 v7, p6
move-object/from16 v8, p9
move-object/from16 v9, p7
invoke-direct/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
invoke-virtual {v10, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
:cond_2c
move-object/from16 v0, p5
invoke-static {v4, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
:cond_31
return-void
.end method
.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.registers 3
move-object v0, p1
check-cast v0, Landroid/transition/Transition;
invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
return-void
.end method
.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
.registers 10
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v4
invoke-static {p0, p1, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
move-result v7
if-eqz v7, :cond_b
:cond_a
return-void
:cond_b
invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move v3, v4
:goto_f
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v7
if-ge v3, v7, :cond_a
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
instance-of v7, v5, Landroid/view/ViewGroup;
if-eqz v7, :cond_39
move-object v6, v5
check-cast v6, Landroid/view/ViewGroup;
invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_27
if-ge v2, v1, :cond_39
invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-static {p0, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
move-result v7
if-nez v7, :cond_36
invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_36
add-int/lit8 v2, v2, 0x1
goto :goto_27
:cond_39
add-int/lit8 v3, v3, 0x1
goto :goto_f
.end method
.method public static captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
.registers 6
if-eqz p0, :cond_15
invoke-static {p2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
if-eqz p3, :cond_e
invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
:cond_e
invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_16
const/4 p0, 0x0
:cond_15
:goto_15
return-object p0
:cond_16
invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object v0, p0
check-cast v0, Landroid/transition/Transition;
invoke-static {v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
goto :goto_15
.end method
.method private static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
.registers 7
invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_16
instance-of v4, p1, Landroid/view/ViewGroup;
if-eqz v4, :cond_28
move-object v3, p1
check-cast v3, Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z
move-result v4
if-eqz v4, :cond_17
invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_16
:goto_16
return-void
:cond_17
invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_1c
if-ge v2, v1, :cond_16
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
add-int/lit8 v2, v2, 0x1
goto :goto_1c
:cond_28
invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
.end method
.method public static cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
.registers 24
move-object v2, p2
check-cast v2, Landroid/transition/Transition;
move-object/from16 v4, p4
check-cast v4, Landroid/transition/Transition;
move-object/from16 v6, p6
check-cast v6, Landroid/transition/Transition;
move-object/from16 v10, p8
check-cast v10, Landroid/transition/Transition;
if-eqz v10, :cond_29
invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v12
new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4;
move-object v1, p0
move-object/from16 v3, p3
move-object/from16 v5, p5
move-object/from16 v7, p7
move-object/from16 v8, p10
move-object/from16 v9, p9
move-object v11, p1
invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V
invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
:cond_29
return-void
.end method
.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.registers 1
if-eqz p0, :cond_8
check-cast p0, Landroid/transition/Transition;
invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;
move-result-object p0
:cond_8
return-object p0
.end method
.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
.registers 5
const/4 v0, 0x0
:goto_1
if-ge v0, p2, :cond_e
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
if-ne v1, p1, :cond_b
const/4 v1, 0x1
:goto_a
return v1
:cond_b
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_e
const/4 v1, 0x0
goto :goto_a
.end method
.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
.registers 4
move-object v0, p0
check-cast v0, Landroid/transition/Transition;
invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
return-void
.end method
.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
.registers 8
invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
move-result v5
if-nez v5, :cond_27
invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_f
invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_f
instance-of v5, p1, Landroid/view/ViewGroup;
if-eqz v5, :cond_27
move-object v4, p1
check-cast v4, Landroid/view/ViewGroup;
invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_1b
if-ge v2, v1, :cond_27
invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
add-int/lit8 v2, v2, 0x1
goto :goto_1b
:cond_27
return-void
.end method
.method private static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
.registers 8
const/4 v6, 0x1
const/4 v4, 0x0
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
const/4 v2, 0x2
new-array v1, v2, [I
invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V
aget v2, v1, v4
aget v3, v1, v6
aget v4, v1, v4
invoke-virtual {p0}, Landroid/view/View;->getWidth()I
move-result v5
add-int/2addr v4, v5
aget v5, v1, v6
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v6
add-int/2addr v5, v6
invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
return-object v0
.end method
.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
.registers 2
invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z
move-result v0
if-nez v0, :cond_20
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method private static isNullOrEmpty(Ljava/util/List;)Z
.registers 2
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
.registers 14
const/4 v2, 0x1
move-object v0, p0
check-cast v0, Landroid/transition/Transition;
move-object v1, p1
check-cast v1, Landroid/transition/Transition;
move-object v3, p2
check-cast v3, Landroid/transition/Transition;
if-eqz v0, :cond_f
if-eqz v1, :cond_f
move v2, p3
:cond_f
if-eqz v2, :cond_27
new-instance v7, Landroid/transition/TransitionSet;
invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V
if-eqz v0, :cond_1b
invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
:cond_1b
if-eqz v1, :cond_20
invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
:cond_20
if-eqz v3, :cond_25
invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
:cond_25
move-object v6, v7
:goto_26
return-object v6
:cond_27
const/4 v4, 0x0
if-eqz v1, :cond_4f
if-eqz v0, :cond_4f
new-instance v8, Landroid/transition/TransitionSet;
invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V
invoke-virtual {v8, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
move-result-object v8
invoke-virtual {v8, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
move-result-object v8
const/4 v9, 0x1
invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;
move-result-object v4
:cond_3e
:goto_3e
if-eqz v3, :cond_57
new-instance v5, Landroid/transition/TransitionSet;
invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V
if-eqz v4, :cond_4a
invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
:cond_4a
invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
move-object v6, v5
goto :goto_26
:cond_4f
if-eqz v1, :cond_53
move-object v4, v1
goto :goto_3e
:cond_53
if-eqz v0, :cond_3e
move-object v4, v0
goto :goto_3e
:cond_57
move-object v6, v4
goto :goto_26
.end method
.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
.registers 10
move-object v5, p0
check-cast v5, Landroid/transition/Transition;
instance-of v6, v5, Landroid/transition/TransitionSet;
if-eqz v6, :cond_1b
move-object v3, v5
check-cast v3, Landroid/transition/TransitionSet;
invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I
move-result v2
const/4 v1, 0x0
:goto_f
if-ge v1, v2, :cond_4b
invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_1b
invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z
move-result v6
if-nez v6, :cond_4b
invoke-virtual {v5}, Landroid/transition/Transition;->getTargets()Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_4b
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v6
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v7
if-ne v6, v7, :cond_4b
invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
move-result v6
if-eqz v6, :cond_4b
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/lit8 v1, v6, -0x1
:goto_3d
if-ltz v1, :cond_4b
invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/view/View;
invoke-virtual {v5, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;
add-int/lit8 v1, v1, -0x1
goto :goto_3d
:cond_4b
return-void
.end method
.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.registers 5
move-object v1, p0
check-cast v1, Landroid/transition/Transition;
invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v0
new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1;
invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V
invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
return-void
.end method
.method private static setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
.registers 3
if-eqz p0, :cond_a
new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3;
invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
:cond_a
return-void
.end method
.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
.registers 10
move-object v2, p0
check-cast v2, Landroid/transition/TransitionSet;
invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V
invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->clear()V
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
:goto_19
if-ge v1, v0, :cond_27
invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
invoke-static {v4, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_27
invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
return-void
.end method
.method public static wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v1, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v1
:cond_4
move-object v0, p0
check-cast v0, Landroid/transition/Transition;
if-eqz v0, :cond_3
new-instance v1, Landroid/transition/TransitionSet;
invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V
invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
goto :goto_3
.end method