.class Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;->updateList()V

    .line 82
    :cond_0
    return-void
.end method
