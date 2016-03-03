.class  Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCompatCallbacks.java"
.implements Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"
return-object v0
.end method
.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->writeToParcel(Landroid/os/Parcel;I)V
:goto_16
if-eqz p3, :cond_36
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_20
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_28
.catchall {:try_start_4 .. :try_end_28} :catchall_31
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v1, 0x0
:try_start_2d
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_16
:catchall_31
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
:cond_36
const/4 v1, 0x0
:try_start_37
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3a
.catchall {:try_start_37 .. :try_end_3a} :catchall_31
goto :goto_20
.end method
.method public onConnectFailed()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_11
.catchall {:try_start_4 .. :try_end_11} :catchall_15
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_15
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x3
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_1b
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1b
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method