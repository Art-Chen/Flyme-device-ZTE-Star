.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mFileName:Ljava/lang/String;

.field final mId:J

.field final mSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "id"    # J

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    .line 516
    iput-wide p2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    .line 517
    iput-wide p4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    .line 518
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;)I
    .locals 4
    .param p1, "that"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;

    .prologue
    .line 522
    if-eq p0, p1, :cond_0

    iget-wide v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 509
    check-cast p1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->compareTo(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
