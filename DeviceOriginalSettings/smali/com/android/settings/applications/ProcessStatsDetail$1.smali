.class final Lcom/flyme/DeviceOriginalSettings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;)I
    .locals 4
    .param p1, "lhs"    # Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;
    .param p2, "rhs"    # Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;

    .prologue
    .line 209
    iget-wide v0, p1, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-wide v0, p1, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 212
    const/4 v0, -0x1

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/applications/ProcessStatsDetail$1;->compare(Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;Lcom/flyme/DeviceOriginalSettings/applications/ProcStatsEntry$Service;)I

    move-result v0

    return v0
.end method
