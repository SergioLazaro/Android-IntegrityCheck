.class final Landroid/support/v4/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$activity:Landroid/app/Activity;
.field final synthetic val$permissions:[Ljava/lang/String;
.field final synthetic val$requestCode:I
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
.registers 4
iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;
iput p3, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;
array-length v5, v5
new-array v0, v5, [I
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;
invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;
invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;
array-length v4, v5
const/4 v1, 0x0
:goto_15
if-ge v1, v4, :cond_24
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;
aget-object v5, v5, v1
invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
move-result v5
aput v5, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_24
iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;
check-cast v5, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
iget v6, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I
iget-object v7, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;
invoke-interface {v5, v6, v7, v0}, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
return-void
.end method