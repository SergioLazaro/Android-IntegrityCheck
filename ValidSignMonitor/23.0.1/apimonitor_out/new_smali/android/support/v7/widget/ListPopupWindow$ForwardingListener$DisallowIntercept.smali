.class  Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
#getter for: Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;
invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->access$900(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
return-void
.end method