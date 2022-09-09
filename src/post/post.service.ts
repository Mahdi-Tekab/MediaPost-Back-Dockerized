import { Injectable } from '@nestjs/common';
import { CreatePostDto } from './dto/create-post.dto';
import { UpdatePostDto } from './dto/update-post.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class PostService {
  constructor(private prisma: PrismaService) {}

  create(createPostDto: CreatePostDto) {
    return this.prisma.postDB.create({ data: createPostDto });
  }

  findAll() {
    return this.prisma.postDB.findMany({
      orderBy: {
        id: 'desc',
      },
    });
  }

  findOne(id: number) {
    return `This action returns a #${id} post`;
  }

  like(id: number) {
    return this.prisma.postDB.update({
      where: {
        id,
      },
      data: {
        like: { increment: 1 },
      },
    });
  }

  remove(id: number) {
    return this.prisma.postDB.delete({ where: { id } });
  }
}
