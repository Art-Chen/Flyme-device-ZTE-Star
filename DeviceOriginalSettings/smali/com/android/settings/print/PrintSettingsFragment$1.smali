.class Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment$1;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;)V

    .line 111
    return-void
.end method
