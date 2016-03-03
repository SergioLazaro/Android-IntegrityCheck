.class public Landroid/support/v4/app/NotificationCompatApi20$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;
.field private b:Landroid/app/Notification$Builder;
.field private mExtras:Landroid/os/Bundle;
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
.registers 32
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v4, Landroid/app/Notification$Builder;
invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
iget-wide v6, p2, Landroid/app/Notification;->when:J
invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p14
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;
move-result-object v4
iget v5, p2, Landroid/app/Notification;->icon:I
iget v6, p2, Landroid/app/Notification;->iconLevel:I
invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
move-result-object v4
iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v4
iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v4
iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;
iget v6, p2, Landroid/app/Notification;->audioStreamType:I
invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
move-result-object v4
iget-object v5, p2, Landroid/app/Notification;->vibrate:[J
invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
move-result-object v4
iget v5, p2, Landroid/app/Notification;->ledARGB:I
iget v6, p2, Landroid/app/Notification;->ledOnMS:I
iget v7, p2, Landroid/app/Notification;->ledOffMS:I
invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
move-result-object v5
iget v4, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v4, v4, 0x2
if-eqz v4, :cond_fa
const/4 v4, 0x1
:goto_47
invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
move-result-object v5
iget v4, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v4, v4, 0x8
if-eqz v4, :cond_fd
const/4 v4, 0x1
:goto_52
invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
move-result-object v5
iget v4, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v4, v4, 0x10
if-eqz v4, :cond_100
const/4 v4, 0x1
:goto_5d
invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
move-result-object v4
iget v5, p2, Landroid/app/Notification;->defaults:I
invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
move-result-object v4
invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v4
invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v4
move-object/from16 v0, p17
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v4
invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v4
move-object/from16 v0, p8
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v4
iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v5
iget v4, p2, Landroid/app/Notification;->flags:I
and-int/lit16 v4, v4, 0x80
if-eqz v4, :cond_103
const/4 v4, 0x1
:goto_8c
move-object/from16 v0, p9
invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
move-result-object v4
move-object/from16 v0, p10
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
move-result-object v4
invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p15
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p16
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p11
move/from16 v1, p12
move/from16 v2, p13
invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p18
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;
move-result-object v4
move-object/from16 v0, p21
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
move-result-object v4
move/from16 v0, p22
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;
move-result-object v4
move-object/from16 v0, p23
invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
move-result-object v4
iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;
if-eqz p20, :cond_dc
iget-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;
move-object/from16 v0, p20
invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:cond_dc
if-eqz p19, :cond_f9
invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-nez v4, :cond_f9
iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;
const-string v6, "android.people"
invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
move-object/from16 v0, p19
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Ljava/lang/String;
invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
:cond_f9
return-void
:cond_fa
const/4 v4, 0x0
goto/16 :goto_47
:cond_fd
const/4 v4, 0x0
goto/16 :goto_52
:cond_100
const/4 v4, 0x0
goto/16 :goto_5d
:cond_103
const/4 v4, 0x0
goto :goto_8c
.end method
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;
invoke-static {v0, p1}, Landroid/support/v4/app/NotificationCompatApi20;->addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
return-void
.end method
.method public build()Landroid/app/Notification;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;
iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->mExtras:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;
invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method public getBuilder()Landroid/app/Notification$Builder;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;
return-object v0
.end method