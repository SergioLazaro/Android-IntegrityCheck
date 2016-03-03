.class  Landroid/support/v7/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
.method constructor <init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
#getter for: Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$000(Landroid/support/v7/app/ActionBarDrawerToggle;)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
#calls: Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V
invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$100(Landroid/support/v7/app/ActionBarDrawerToggle;)V
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
#getter for: Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
move-result-object v0
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
#getter for: Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
goto :goto_d
.end method