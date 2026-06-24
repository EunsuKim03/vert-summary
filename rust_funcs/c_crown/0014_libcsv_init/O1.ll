; ModuleID = '0014_libcsv_init_emit.70dc269a1f499202-cgu.0'
source_filename = "0014_libcsv_init_emit.70dc269a1f499202-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @cb1(ptr noundef readnone captures(none) %s, i64 noundef %len, ptr noundef captures(none) %data) unnamed_addr #0 {
start:
  %0 = load i64, ptr %data, align 8, !noundef !3
  %1 = add i64 %0, 1
  store i64 %1, ptr %data, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @cb2(i32 noundef %c, ptr noundef captures(none) %data) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %data, i64 8
  %1 = load i64, ptr %0, align 8, !noundef !3
  %2 = add i64 %1, 1
  store i64 %2, ptr %0, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
