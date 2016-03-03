.class  Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
.registers 2
invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V
return-void
.end method
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
.registers 4
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
#calls: Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
invoke-static {p2, v0}, Landroid/support/v7/app/NotificationCompat;->access$500(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;
move-result-object v0
return-object v0
.end method