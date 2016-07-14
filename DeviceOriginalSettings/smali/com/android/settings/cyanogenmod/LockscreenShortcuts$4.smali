.class Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts$4;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts$4;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts$4;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;->access$300(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/LockscreenShortcuts;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/GlowBackground;

    .line 217
    .local v0, "background":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/GlowBackground;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/GlowBackground;->hideGlow()V

    .line 218
    return-void
.end method
