.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$3;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingSelected(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    invoke-virtual {v0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->showConditionSelection(I)V

    .line 180
    :cond_0
    return-void
.end method
