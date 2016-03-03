.class final Landroid/support/v4/app/FragmentTransitionCompat21$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.field final synthetic val$container:Landroid/view/View;
.field final synthetic val$enterTransition:Landroid/transition/Transition;
.field final synthetic val$enteringViews:Ljava/util/ArrayList;
.field final synthetic val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
.field final synthetic val$nameOverrides:Ljava/util/Map;
.field final synthetic val$nonExistentView:Landroid/view/View;
.field final synthetic val$renamedViews:Ljava/util/Map;
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.registers 8
iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;
iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;
iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;
iput-object p4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
iput-object p5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;
iput-object p6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;
iput-object p7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreDraw()Z
.registers 9
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v6
invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;
if-eqz v6, :cond_14
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;
iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;
invoke-virtual {v6, v7}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;
:cond_14
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
invoke-interface {v6}, Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;->getView()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_8a
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z
move-result v6
if-nez v6, :cond_68
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;
invoke-static {v6, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v6
iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;
invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_42
:goto_42
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_68
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;
invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
if-eqz v5, :cond_42
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v5, v2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V
goto :goto_42
:cond_68
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;
if-eqz v6, :cond_8a
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;
#calls: Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
invoke-static {v6, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$000(Ljava/util/ArrayList;Landroid/view/View;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;
iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;
invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;
iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;
iget-object v7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;
invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
:cond_8a
const/4 v6, 0x1
return v6
.end method