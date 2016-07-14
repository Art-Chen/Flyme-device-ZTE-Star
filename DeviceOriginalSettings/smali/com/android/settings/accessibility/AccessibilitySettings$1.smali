.class Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;->access$000(Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;)V

    .line 130
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;->access$100(Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;)V

    .line 131
    return-void
.end method
