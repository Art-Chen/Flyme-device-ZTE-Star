.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference$Callback;


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
    .line 220
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 224
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 225
    .local v1, "val":I
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-eq v1, v3, :cond_0

    .line 226
    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowFrom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 229
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput v1, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 230
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method
