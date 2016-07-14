.class public Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1482
    const v0, 0x7f04003b

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1476
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1477
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1483
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1484
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

    .line 1485
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1499
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1502
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;

    .prologue
    .line 1509
    if-eqz p1, :cond_2

    .line 1510
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1511
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1512
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;

    .line 1513
    .local v2, "item":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1511
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1515
    :cond_1
    invoke-virtual {v2, p1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;->compareTo(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1520
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1488
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1489
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1490
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1494
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1495
    return-void
.end method
