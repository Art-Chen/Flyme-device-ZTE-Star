.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mPaddingChanged:Z

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 291
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 282
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 288
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z

    .line 292
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 293
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 294
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 5
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 347
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 349
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-interface {v1, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    .line 355
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z

    .line 363
    :cond_1
    monitor-exit v2

    .line 364
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper dimensions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 358
    :catch_1
    move-exception v0

    .line 359
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper padding"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 6
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 372
    .local v2, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 378
    .end local v2    # "ident":J
    :cond_0
    monitor-exit v4

    .line 379
    return-void

    .line 373
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 378
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ident":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 300
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 301
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 306
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 308
    :cond_0
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 316
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_0

    .line 317
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper service gone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, v3, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 329
    const-string v1, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 334
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "flattened":Ljava/lang/String;
    const v1, 0x80e8

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 340
    .end local v0    # "flattened":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 341
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method