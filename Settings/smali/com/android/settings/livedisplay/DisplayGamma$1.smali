.class Lcom/android/settings/livedisplay/DisplayGamma$1;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/livedisplay/DisplayGamma;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/livedisplay/DisplayGamma;


# direct methods
.method constructor <init>(Lcom/android/settings/livedisplay/DisplayGamma;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/livedisplay/DisplayGamma$1;->this$0:Lcom/android/settings/livedisplay/DisplayGamma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    return-void
.end method
