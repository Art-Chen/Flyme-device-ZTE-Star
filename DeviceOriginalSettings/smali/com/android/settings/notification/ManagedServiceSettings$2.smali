.class Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;->updateList()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;)V

    .line 82
    return-void
.end method
