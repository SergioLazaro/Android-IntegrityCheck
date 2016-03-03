.class  Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V
return-void
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 8
iget-object v4, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;
invoke-static {v4}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
move-result-object v4
iget-object v5, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;
invoke-static {v5}, Landroid/support/v7/widget/ShareActionProvider;->access$200(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;
move-result-object v1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;
move-result-object v3
if-eqz v3, :cond_3c
invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v4, "android.intent.action.SEND"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_2e
const-string v4, "android.intent.action.SEND_MULTIPLE"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_33
:cond_2e
iget-object v4, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#calls: Landroid/support/v7/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V
invoke-static {v4, v3}, Landroid/support/v7/widget/ShareActionProvider;->access$300(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)V
:cond_33
iget-object v4, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;
invoke-static {v4}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_3c
const/4 v4, 0x1
return v4
.end method