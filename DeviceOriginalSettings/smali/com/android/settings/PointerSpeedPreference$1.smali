.class Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;

    # invokes: Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;->access$000(Lcom/flyme/DeviceOriginalSettings/PointerSpeedPreference;)V

    .line 47
    return-void
.end method
