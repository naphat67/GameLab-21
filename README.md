# Game21 · Creating Instances

แบบฝึกหัดที่ 2 ภารกิจ 1 สร้างด้วย Godot 4.7 ตามบทเรียน **Creating instances**

- ทดลองความสัมพันธ์ระหว่าง Scene, Node และ Instance
- `Ball.tscn` เป็น RigidBody2D ที่ปรับภาพและคุณสมบัติฟิสิกส์แล้ว
- `Main.tscn` สร้าง Wall 8 instance จากฉากเดียว `Wall.tscn`
- กด Space เพื่อเพิ่ม Ball instance ระหว่างเล่น

ข้อมูลนักศึกษา: `673380076-1 นายณภัทร โสดาดง`

## เว็บเกมและ GitHub Pages

หน้าเว็บและไฟล์ Web export อยู่ใน `docs/` เผยแพร่ repo นี้ที่ **Settings → Pages → Deploy from a branch → main → /docs**

ไฟล์ `docs/game21.html` ต้องอยู่คู่กับไฟล์ `.js`, `.wasm`, `.pck`, `.png` และ worklet ที่อยู่ในโฟลเดอร์เดียวกัน

## Export ใหม่

เปิดโฟลเดอร์นี้ใน Godot 4.7 แล้วเลือก **Project → Export → Web → Export Project** เป็น Release ไปยัง `docs/game21.html`

