.class  Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
#calls: Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onLongPress()V
invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->access$1000(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
return-void
.end method