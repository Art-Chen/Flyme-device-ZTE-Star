.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # setter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$802(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Z)Z

    .line 167
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 168
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$1000(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$500(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 156
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$400(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 151
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$1000(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$1200(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 180
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$000(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 143
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$100(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 144
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$200(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 145
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$300(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 146
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # setter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$602(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Z)Z

    .line 161
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$700(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 162
    return-void
.end method
