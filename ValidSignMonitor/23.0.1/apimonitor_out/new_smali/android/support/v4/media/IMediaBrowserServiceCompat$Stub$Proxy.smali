.class  Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCompat.java"
.implements Landroid/support/v4/media/IMediaBrowserServiceCompat;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 8
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_5
const-string v2, "android.support.v4.media.IMediaBrowserServiceCompat"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_13
invoke-interface {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_13
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x3
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1e
.catchall {:try_start_5 .. :try_end_1e} :catchall_22
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 9
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_5
const-string v2, "android.support.v4.media.IMediaBrowserServiceCompat"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
if-eqz p3, :cond_1d
invoke-interface {p3}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_1d
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_28
.catchall {:try_start_5 .. :try_end_28} :catchall_31
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_17
:catchall_31
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 7
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_5
const-string v2, "android.support.v4.media.IMediaBrowserServiceCompat"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_10
invoke-interface {p1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_10
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_5 .. :try_end_1b} :catchall_1f
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "android.support.v4.media.IMediaBrowserServiceCompat"
return-object v0
.end method
.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.IMediaBrowserServiceCompat"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_22
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v0, v1}, Landroid/support/v4/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V
:goto_16
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x5
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1e
.catchall {:try_start_4 .. :try_end_1e} :catchall_27
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_22
const/4 v1, 0x0
:try_start_23
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_27
goto :goto_16
:catchall_27
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.registers 8
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_5
const-string v2, "android.support.v4.media.IMediaBrowserServiceCompat"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_13
invoke-interface {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_13
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x4
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1e
.catchall {:try_start_5 .. :try_end_1e} :catchall_22
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method