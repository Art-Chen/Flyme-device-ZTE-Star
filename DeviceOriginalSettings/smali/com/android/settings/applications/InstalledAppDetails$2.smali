.class Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$1600(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;Z)V

    .line 1350
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
