.class Lcom/android/settings/CustomScreenColor$PPServiceConnection;
.super Ljava/lang/Object;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomScreenColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CustomScreenColor;


# direct methods
.method private constructor <init>(Lcom/android/settings/CustomScreenColor;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CustomScreenColor;
    .param p2, "x1"    # Lcom/android/settings/CustomScreenColor$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/CustomScreenColor$PPServiceConnection;-><init>(Lcom/android/settings/CustomScreenColor;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    invoke-static {p2}, Lcom/android/display/IPPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    .line 247
    const-string v1, "CustomScreenColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    iget-object v3, v3, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    iget-object v1, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    iget-object v1, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->startPP()Z

    .line 251
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/CustomScreenColor;->access$100(Lcom/android/settings/CustomScreenColor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomScreenColor"

    const-string v2, "startPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    iget-object v1, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    const-string v1, "CustomScreenColor"

    const-string v2, "stopPP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    iget-object v1, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->stopPP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor$PPServiceConnection;->this$0:Lcom/android/settings/CustomScreenColor;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    .line 271
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomScreenColor"

    const-string v2, "stopPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
