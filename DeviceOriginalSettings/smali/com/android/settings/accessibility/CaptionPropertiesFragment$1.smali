.class Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->access$000(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)V

    .line 143
    return-void
.end method
