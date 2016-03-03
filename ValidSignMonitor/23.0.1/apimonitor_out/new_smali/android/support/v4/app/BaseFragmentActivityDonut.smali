.class abstract Landroid/support/v4/app/BaseFragmentActivityDonut;
.super Landroid/app/Activity;
.source "BaseFragmentActivityDonut.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v0
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
:cond_17
invoke-static {p0, p1}, Ldroidbox/android/app/Activity;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
return-void
.end method
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
const/4 v1, 0x0
invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityDonut;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_b
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
:cond_b
return-object v0
.end method