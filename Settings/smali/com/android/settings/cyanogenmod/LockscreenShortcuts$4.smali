.class Lcom/android/settings/cyanogenmod/LockscreenShortcuts$4;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenShortcuts$4;->this$0:Lcom/android/settings/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenShortcuts$4;->this$0:Lcom/android/settings/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/android/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/LockscreenShortcuts;->access$300(Lcom/android/settings/cyanogenmod/LockscreenShortcuts;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/GlowBackground;

    .line 217
    .local v0, "background":Lcom/android/settings/cyanogenmod/GlowBackground;
    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/GlowBackground;->hideGlow()V

    .line 218
    return-void
.end method
