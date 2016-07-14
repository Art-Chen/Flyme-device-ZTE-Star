.class Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    const/4 v1, 0x1

    # setter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mDsClientConnected:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$402(Lcom/flyme/DeviceOriginalSettings/SoundSettings;Z)Z

    .line 163
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$500(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Landroid/dolby/DsClient;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->setDsClient(Landroid/dolby/DsClient;)V

    .line 164
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    .line 165
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mDsClientConnected:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$402(Lcom/flyme/DeviceOriginalSettings/SoundSettings;Z)Z

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->setDsClient(Landroid/dolby/DsClient;)V

    .line 170
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    .line 171
    return-void
.end method

.method public onDsOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    .line 175
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0
    .param p1, "profile"    # I
    .param p2, "preset"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    .line 179
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 182
    return-void
.end method
