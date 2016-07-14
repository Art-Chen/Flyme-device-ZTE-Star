.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$10;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 901
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$10;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$10;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$1900(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 904
    const/4 v0, 0x1

    return v0
.end method
