.class  Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V
return-void
.end method