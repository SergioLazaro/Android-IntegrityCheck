.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"
.implements Landroid/support/v7/app/AppCompatCallback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public getDelegate()Landroid/support/v7/app/AppCompatDelegate;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;
if-nez v0, :cond_a
invoke-static {p0, p0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;
:cond_a
iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;
return-object v0
.end method
.method public getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
move-result-object v0
return-object v0
.end method
.method public getMenuInflater()Landroid/view/MenuInflater;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
return-object v0
.end method
.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
return-object v0
.end method
.method public getSupportParentActivityIntent()Landroid/content/Intent;
.registers 2
invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public invalidateOptionsMenu()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method public onContentChanged()V
.registers 1
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->onSupportContentChanged()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
return-void
.end method
.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
.registers 2
invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
return-void
.end method
.method protected onDestroy()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V
return-void
.end method
.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v1
if-eqz v1, :cond_8
const/4 v1, 0x1
:goto_7
return v1
:cond_8
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I
move-result v1
const v2, 0x102002c
if-ne v1, v2, :cond_24
if-eqz v0, :cond_24
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I
move-result v1
and-int/lit8 v1, v1, 0x4
if-eqz v1, :cond_24
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z
move-result v1
goto :goto_7
:cond_24
const/4 v1, 0x0
goto :goto_7
.end method
.method public onMenuOpened(ILandroid/view/Menu;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onPanelClosed(ILandroid/view/Menu;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V
return-void
.end method
.method protected onPostCreate(Landroid/os/Bundle;)V
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V
return-void
.end method
.method protected onPostResume()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V
return-void
.end method
.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
.registers 2
return-void
.end method
.method protected onStop()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V
return-void
.end method
.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
.registers 2
return-void
.end method
.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
.registers 2
return-void
.end method
.method public onSupportContentChanged()V
.registers 1
return-void
.end method
.method public onSupportNavigateUp()Z
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_27
invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_23
invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V
:try_start_19
invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
:try_end_1c
.catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1e
:goto_1c
const/4 v3, 0x1
:goto_1d
return v3
:catch_1e
move-exception v1
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V
goto :goto_1c
:cond_23
invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V
goto :goto_1c
:cond_27
const/4 v3, 0x0
goto :goto_1d
.end method
.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public setContentView(I)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
return-void
.end method
.method public setSupportProgress(I)V
.registers 2
return-void
.end method
.method public setSupportProgressBarIndeterminate(Z)V
.registers 2
return-void
.end method
.method public setSupportProgressBarIndeterminateVisibility(Z)V
.registers 2
return-void
.end method
.method public setSupportProgressBarVisibility(Z)V
.registers 2
return-void
.end method
.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
move-result-object v0
return-object v0
.end method
.method public supportInvalidateOptionsMenu()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V
return-void
.end method
.method public supportNavigateUpTo(Landroid/content/Intent;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
return-void
.end method
.method public supportRequestWindowFeature(I)Z
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->requestWindowFeature(I)Z
move-result v0
return v0
.end method
.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
move-result v0
return v0
.end method