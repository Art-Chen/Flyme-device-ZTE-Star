.class Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;Landroid/content/Intent;)V

    .line 232
    return-void
.end method
