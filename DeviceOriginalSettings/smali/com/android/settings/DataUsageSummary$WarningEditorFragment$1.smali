.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2028
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2030
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 2031
    .local v0, "bytes":J
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 2032
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Z)V

    .line 2033
    return-void
.end method
