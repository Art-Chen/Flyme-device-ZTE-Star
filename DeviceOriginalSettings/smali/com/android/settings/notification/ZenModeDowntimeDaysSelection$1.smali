.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    .line 71
    return-void
.end method
